#!/usr/bin/env stack
-- stack --install-ghc runghc --package turtle

{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Text (lines)
import Turtle

import Prelude hiding (lines)

validate :: [Text] -> IO ExitCode
validate = fmap anyFailure . mapM validateOne
  where
    validateOne xml = shell (schemer <> " --catalog " <> catalog <> " --xml " <> xml <> " --xsd " <> xsd) empty
    schemer  = "../tools/xml-schemer/bin/schemer.sh"
    xsd      = "../schemas/geodesyML.xsd"
    catalog  = "../schemas/third-party/catalog.xml"

-- | Arguments: one or more xml files to validate, or none to validate all
--   xml files in the current directory
main :: IO ()
main = getXML >>= validate >>= \case
         ExitSuccess   -> putStrLn "OK, all documents validated successfully."
         ExitFailure _ -> putStrLn "Error, some documents failed to validate!"
  where
    getXML = arguments >>= \case
        [] -> lines . snd <$> shellStrict "ls *.xml" empty
        as -> return as

anyFailure :: [ExitCode] -> ExitCode
anyFailure = runAnyFailure . foldMap AnyFailure

newtype AnyFailure = AnyFailure { runAnyFailure :: ExitCode }

instance Monoid AnyFailure where
    mempty = AnyFailure ExitSuccess
    AnyFailure ExitSuccess `mappend` AnyFailure ExitSuccess = AnyFailure  ExitSuccess
    _                      `mappend` _                      = AnyFailure (ExitFailure 1)

