@echo off

::----------------------------------------------------------------------
:: Specify the location of JRE/JDK 7.x, 6.x, 5.x or 1.4.x here
::----------------------------------------------------------------------
set JAVA_HOME=C:\Program Files\Java\jre7

::----------------------------------------------------------------------
:: Specify the location of XMLSpy home directory and XMLSpy version
::----------------------------------------------------------------------
set XMLSPY_HOME=C:\Program Files\Altova\XMLSpy2014
set XMLSPY_VERSION=2014

::----------------------------------------------------------------------
:: Specify the location of DocFlex/XML home directory.
::
:: If you encounter an error like:
:: 'Exception in thread "main" java.lang.NoClassDefFoundError: com/docflex/xml/Designer'
:: please specify the absolute pathname of your DocFlex/XML installation directly, e.g.
::
:: set DFH=C:\docflex-xml
::
:: The default setting (below) assigns 'DFH' with the absolute pathname of 
:: this BAT file's parent directory appended with "..\.."
::----------------------------------------------------------------------
set DFH=%~dp0..\..

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
set CLASSPATH=%DFH%\lib\xml-apis.jar;%DFH%\lib\xercesImpl.jar;%DFH%\lib\resolver.jar;%DFH%\lib\docflex-xml.jar

::----------------------------------------------------------------------
:: Specify the XMLSpy Integration class as element image provider and
:: pass XMLSpy version to the integration
::----------------------------------------------------------------------
set OPTIONS=-m:IMAGE_PROVIDER_CLASS=com.docflex.xml.xmlspy.SpyKit -m:XMLSPY_VERSION=%XMLSPY_VERSION%

::----------------------------------------------------------------------
:: Specify XMLSpy class path (for all XMLSpy API versions together)
::----------------------------------------------------------------------
set OPTIONS=%OPTIONS% -m:XMLSPY_CLASSPATH="%XMLSPY_HOME%\XMLSpyInterface.jar;%XMLSPY_HOME%\JavaAPI\XMLSpyAPI.jar;%XMLSPY_HOME%\JavaAPI\AltovaAutomation.jar"

::----------------------------------------------------------------------
:: Specify XMLSpy library path (the location of Windows DLLs that
:: implement the bridge between XMLSpy Java API v2012 and XMLSpy.exe)
::----------------------------------------------------------------------
set OPTIONS=%OPTIONS% -m:XMLSPY_LIBPATH="%XMLSPY_HOME%\JavaAPI"

::----------------------------------------------------------------------
:: Launch Template Designer
:: (Note: double quotes are needed because file pathnames may contain spaces)
::----------------------------------------------------------------------
"%JAVA_HOME%\bin\java" %JAVA_OPTIONS% -cp "%CLASSPATH%" com.docflex.xml.Designer %OPTIONS%
