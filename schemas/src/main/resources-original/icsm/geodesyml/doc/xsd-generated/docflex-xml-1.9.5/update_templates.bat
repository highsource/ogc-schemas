@echo off
::----------------------------------------------------------------------
:: This BAT file will help you to update your templates according to
:: the new DocFlex/XML version or new license you are using now
::----------------------------------------------------------------------

::----------------------------------------------------------------------
:: Specify the location of JRE/JDK 7.x, 6.x, 5.x or 1.4.x here
::----------------------------------------------------------------------
set JAVA_HOME=C:\Program Files\Java\jre7

::----------------------------------------------------------------------
:: Specify the location of DocFlex/XML home directory.
::
:: If you encounter an error like:
:: 'Exception in thread "main" java.lang.NoClassDefFoundError: com/docflex/xml/Designer'
:: please specify directly the absolute pathname of your DocFlex/XML installation, e.g.
::
:: set DFH=C:\docflex-xml
::
:: The default setting (below) assigns 'DFH' with the absolute pathname of 
:: this BAT file's parent directory
::----------------------------------------------------------------------
set DFH=%~dp0

::----------------------------------------------------------------------
:: Get rid of the trailing slash in 'DFH', if present
::----------------------------------------------------------------------
if %DFH:~-1%==\ set DFH=%DFH:~0,-1%

::----------------------------------------------------------------------
:: DocFlex/XML class path
::----------------------------------------------------------------------
set CLASS_PATH=%DFH%\lib\xml-apis.jar;%DFH%\lib\xercesImpl.jar;%DFH%\lib\resolver.jar;%DFH%\lib\docflex-xml.jar

::----------------------------------------------------------------------
:: Please specify the location of your templates here.
:: Add -r option to include all the template directory subtree
::----------------------------------------------------------------------
set DOCFLEX_OPTIONS=-updatetemplates "%DFH%\templates" -r

::----------------------------------------------------------------------
:: Run template designer to update templates
:: (Note: double quotes are needed because file pathnames may contain spaces)
::----------------------------------------------------------------------
"%JAVA_HOME%\bin\java" -cp "%CLASS_PATH%" com.docflex.xml.Designer %DOCFLEX_OPTIONS%
pause