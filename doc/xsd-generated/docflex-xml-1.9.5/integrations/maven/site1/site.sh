#!/bin/sh

#----------------------------------------------------------------------
# Specify the location of Sun JDK/JRE 7.x, 6.x, 5.x or 1.4.x here
#----------------------------------------------------------------------
export JAVA_HOME=/usr/java/jdk1.7.0

#----------------------------------------------------------------------
# Specify the location of Apache Maven here
#----------------------------------------------------------------------
M2_HOME=/usr/local/apache-maven-2.2.1

#----------------------------------------------------------------------
# Setting the initial and maximum heap size allocated by JVM when
# running Maven.
#
# Since DocFlex/XML generator will be executed in the same JVM, check
# this option when you need to process large quantities of data!
#
# According to our tests, allowing 512 Mb heap size on 32-bit Java is OK
# for most purposes (e.g. running XSDDoc to document large XML schemas).
# However, for 64-bit Java (running on Windows 64-bit) this amount must be doubled.
# So, you should specify -Xmx1024m, instead of -Xmx512m.
#
# The JVM options below set the initial and maximum Java heap size to
# 512 Mb and 1024 Mb respectively.
#----------------------------------------------------------------------
export MAVEN_OPTS="-Xms512m -Xmx1024m"

#----------------------------------------------------------------------
# Run the site generation
#----------------------------------------------------------------------
${M2_HOME}/bin/mvn site:site

sleep 10
