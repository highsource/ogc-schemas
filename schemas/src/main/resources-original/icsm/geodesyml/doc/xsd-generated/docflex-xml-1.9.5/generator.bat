@echo off

::----------------------------------------------------------------------
:: Specify the location of JRE/JDK 7.x, 6.x, 5.x or 1.4.x here
::----------------------------------------------------------------------
set JAVA_HOME=C:\Program Files\Java\jre7

::----------------------------------------------------------------------
:: Specify the location of DocFlex/XML home directory.
::
:: If you encounter an error like:
:: 'Exception in thread "main" java.lang.NoClassDefFoundError: com/docflex/xml/Generator'
:: please specify the absolute pathname of your DocFlex/XML installation directly, e.g.
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
:: -Xmx option sets the maximum heap size allocated by JVM.
::
:: Check this option when you need to process large quantities of data!
::
:: According to our tests, allowing 512 Mb heap size on 32-bit Java is OK
:: for most purposes (e.g. running XSDDoc to document large XML schemas).
:: However, for 64-bit Java (running on Windows 64-bit) this amount must be doubled.
:: So, you should specify -Xmx1024m, instead of -Xmx512m.
::
:: Note that allocating too much memory isn't good either because it may actually
:: decrease the performance, especially when that amount of memory isn't backed
:: by the physical RAM on your system.
::
:: The JVM options below set the initial Java heap size to 512 Mb
:: and allow extending it up to 1024 Mb.
::----------------------------------------------------------------------
set JAVA_OPTIONS=-Xms512m -Xmx1024m

::----------------------------------------------------------------------
:: DocFlex/XML class path
::----------------------------------------------------------------------
set CLASS_PATH=%DFH%\lib\xml-apis.jar;%DFH%\lib\xercesImpl.jar;%DFH%\lib\resolver.jar;%DFH%\lib\docflex-xml.jar

::----------------------------------------------------------------------
:: Run generator with all settings taken from generator.config file
:: (Note: double quotes are needed because file pathnames may contain spaces)
::----------------------------------------------------------------------
"%JAVA_HOME%\bin\java" %JAVA_OPTIONS% -cp "%CLASS_PATH%" com.docflex.xml.Generator
