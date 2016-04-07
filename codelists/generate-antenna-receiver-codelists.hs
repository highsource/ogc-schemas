#!/usr/bin/env stack
-- stack --install-ghc runghc --package attoparsec-parsec --package heist --package html-entities

{-# LANGUAGE GeneralizedNewtypeDeriving        #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE MultiWayIf        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE RecordWildCards #-}

import Control.Applicative
import Control.Exception
import Control.Monad.Catch
import Data.Char
import Data.Foldable
import Data.Monoid
import Data.Typeable
import qualified Data.ByteString as B
import Blaze.ByteString.Builder (toByteStringIO)
import Control.Monad.IO.Class
import Control.Monad.Trans.Either
import Data.List (groupBy)
import Control.Lens
import qualified Data.Text.IO as T
import Data.Text (Text)
import Data.Text.Lazy (toStrict)
import Data.Text.Lazy.Builder (toLazyText)
import Data.Text.Encoding (decodeUtf8)
import qualified Data.Text as T
import System.Environment (getArgs)
import Data.Attoparsec.Text as A
import Heist hiding (Chunk)
import Heist.Interpreted
import qualified HTMLEntities.Builder as H (text)


newtype Block = Block [Chunk]
newtype Chunk = Chunk [Text] deriving (Monoid)


blocks :: Parser [Block]
blocks = block `sepBy1` endOfLine


block :: Parser Block
block = Block <$> do
    separatorLine
    chunks <- chunk `sepBy1` separatorLine
    separatorLine
    return chunks
  where
    chunk = Chunk <$> many1 dataLine

    dataLine = do
        first <- char '|' <|> char ' ' -- there is a single data line that begins with a space
        rest  <- A.takeWhile (not . isEndOfLine)
        endOfLine
        return (T.cons first rest)

    separatorLine = do
        _ <- char '+'
        skipWhile (not . isEndOfLine)
        endOfLine


dataBlocks :: Parser [Block]
dataBlocks = do
    _ <- block -- skip the changelog
    endOfLine
    blocks


parseFile :: Text -> Either String [Block]
parseFile = A.parseOnly dataBlocks


data Table = Table
    { tableHeader :: Header
    , tableCodes  :: [Code]
    }
    deriving (Show)


data Header = Antenna | Receiver | PreviouslyValid | Other Text
  deriving (Eq, Show)


data Code = Code
    { code :: Text
    , desc :: Text
    }
    deriving (Show)

type Row = (Text, Text)


-- |
-- >>> toRow (T.pack "| foo   |  bar  |")
-- ("foo","bar")
toRow :: Text -> Row
toRow line =
    bimap (T.strip . T.dropEnd 1) (T.drop 2 . T.stripEnd . T.dropEnd 1) (T.splitAt i line')
  where
    i = case T.findIndex (== '|') line' of
            Just i' -> i' + 1
            Nothing -> T.length line'
    line' = T.drop 1 line


-- |
-- >>>
-- :set -XOverloadedStrings
-- :{
--   toBody $ Chunk
--     [ "| code1 |  foo   |"
--     , "|       |   bar  |"
--     , "|       |   quux |"
--     , "| code2 |  abc   |"
--     , "| code3 |  xy    |"
--     , "|       |   z    |"
--     ]
-- :}
-- [("code1","foo bar quux"),("code2","abc"),("code3","xy z")]
--
toBody :: Chunk -> [Code]
toBody (Chunk lines') = map (uncurry Code . mconcat) (groupBy f (filter p $ map toRow lines'))
  where
    f (_, _) (c2, _) = T.null c2
    p (code, desc)   = not (T.null code) || T.null desc || isSpace (T.head desc)


toHeader :: Chunk -> Header
toHeader (Chunk headerLines) =
    toHeader' (fst (toRow (head headerLines)))
  where
    toHeader' text =
        if | "Receivers"        `T.isInfixOf` text -> Receiver
           | "Rcvrs"            `T.isInfixOf` text -> Receiver
           | "Antennae"         `T.isInfixOf` text -> Antenna
           | "Previously valid" `T.isInfixOf` text -> PreviouslyValid 
           | otherwise                             -> Other text


toTable :: Chunk -> Chunk -> Table
toTable headerChunk bodyChunk =
    Table (toHeader headerChunk) (toBody bodyChunk)


toTables :: Block -> [Table]
toTables (Block chunks) = go chunks
  where
    go = \case -- TODO: tidy up and fix non-exhaustive pattern match
        []   -> []
        [_]  -> []
        [headerChunk, bodyChunk] -> [toTable headerChunk bodyChunk]
        headerChunk : bodyChunk : headerChunk' : bodyChunk' : rest ->
            if toHeader headerChunk' == PreviouslyValid
                then [toTable headerChunk (bodyChunk <> bodyChunk')]
                else toTable headerChunk bodyChunk : go (headerChunk':bodyChunk':rest)


data ParsingError = ParsingError String
    deriving (Typeable, Show)


instance Exception ParsingError


parseTables :: (MonadThrow m) => Text -> m [Table]
parseTables text = case parseFile text of
    Left errorMsg -> throwM (ParsingError errorMsg)
    Right bs      -> return (mconcat (map toTables bs))


filterByHeader :: Header -> [Table] -> [Table]
filterByHeader header = filter (\t -> tableHeader t == header)


bindCodesByHeader :: (Monad m) => [Table] -> Header -> Splices (Splice m)
bindCodesByHeader tables header =
    codeCategory ## bindCodes (extractAllCodes (filterByHeader header tables))
  where
    codeCategory = case header of
        Receiver -> "ReceiverTypeCode"
        Antenna  -> "AntennaTypeCode"
        other    -> T.pack (show other)

    extractAllCodes = mconcat . map tableCodes

    bindCodes :: (Monad m) => [Code] -> Splice m
    bindCodes = mapSplices (runChildrenWith . codeSplices) 

    codeSplices :: (Monad m) => Code -> Splices (Splice m)
    codeSplices Code{..} = do
        "gmlId"         ## textSplice (codeCategory <> "_" <> ncName code)
        "identifier" ## textSplice code
        "desc"       ## textSplice (toStrict (toLazyText (H.text desc)))


ncName :: Text -> Text
ncName = T.map sanitise
  where
    sanitise ch = if allowed ch then ch else '_'
    allowed = \case
      '_'  -> True
      '-'  -> True
      '.'  -> True
      ch | isAlphaNum ch -> True
         | otherwise     -> False


main :: IO ()
main = do
    contents <- getArgs >>= T.readFile . head
    case parseTables contents of
        Left e       -> print e
        Right tables ->
            eitherT (traverse_ putStrLn) return $ do
                let config = emptyHeistConfig
                        & set hcTemplateLocations  [loadTemplates "."]
                        & set hcLoadTimeSplices defaultInterpretedSplices
                heist <- initHeist config
                let splices = mconcat (bindCodesByHeader tables <$> [Antenna, Receiver])
                let context = bindSplices splices heist
                output <- renderTemplate context templateName
                case output of
                    Nothing           -> templateNotFound
                    Just (builder, _) -> liftIO (toByteStringIO B.putStr builder)
  where
    templateName = "antenna-receiver-codelists"
    templateNotFound =
        liftIO (T.putStrLn ("Error: template not found: " <> decodeUtf8 templateName <> ".tpl"))

