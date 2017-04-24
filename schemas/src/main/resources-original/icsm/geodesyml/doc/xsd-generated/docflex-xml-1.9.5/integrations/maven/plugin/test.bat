::----------------------------------------------------------------------
:: Specify the location of Sun JDK/JRE 7.x, 6.x, 5.x or 1.4.x here
::----------------------------------------------------------------------
@set JAVA_HOME=C:\Program Files\Java\jdk1.7

::----------------------------------------------------------------------
:: Specify the location of Apache Maven here
::----------------------------------------------------------------------
@set M2_HOME=C:\apache-maven-2.2.1

::----------------------------------------------------------------------
:: Setting the initial and maximum heap size allocated by JVM when 
:: running Maven.
::
:: Since DocFlex/XML generator will be executed in the same JVM, check 
:: this option when you need to process large quantities of data!
::
:: According to our tests, allowing 512 Mb heap size on 32-bit Java is OK
:: for most purposes (e.g. running XSDDoc to document large XML schemas).
:: However, for 64-bit Java (running on Windows 64-bit) this amount must be doubled.
:: So, you should specify -Xmx1024m, instead of -Xmx512m.
::
:: The JVM options below set the initial and maximum Java heap size to
:: 256 Mb and 512 Mb respectively.
::----------------------------------------------------------------------
@set MAVEN_OPTS=-Xms256m -Xmx512m

::----------------------------------------------------------------------
:: Running DocFlex/XML generator from Maven
::----------------------------------------------------------------------
call %M2_HOME%\bin\mvn docflex:docflex-xml-maven-plugin:1.0:generator

pause