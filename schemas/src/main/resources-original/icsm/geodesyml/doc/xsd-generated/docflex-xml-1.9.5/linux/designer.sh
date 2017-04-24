#!/bin/sh

#----------------------------------------------------------------------
# Specify the location of Sun JRE/JDK 7.x, 6.x, 5.x or 1.4.x here
#----------------------------------------------------------------------
JAVA_HOME=/usr/java/jdk1.7.0

#----------------------------------------------------------------------
# Specify the location of DocFlex/XML home directory here
#----------------------------------------------------------------------
DFH=

#----------------------------------------------------------------------
# If DocFlex/XML home directory is not specified,
# derive it from the location of this shell script file
#----------------------------------------------------------------------
if [ -z "$DFH" -o ! -d "$DFH" ] ; then
  ## resolve links
  PRG="$0"
  progname=`basename "$0"`

  # need this for relative symlinks
  while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
    else
    PRG=`dirname "$PRG"`"/$link"
    fi
  done

  DFH=`dirname "$PRG"`/..

  # make it fully qualified
  DFH=`cd "$DFH" > /dev/null && pwd`
fi

#----------------------------------------------------------------------
# -Xmx option sets the maximum heap size allocated by JVM.
#
# Check this option when you need to process large quantities of data!
#
# According to our tests, allowing 512 Mb heap size on 32-bit Java is OK
# for most purposes (e.g. running XSDDoc to document large XML schemas).
# However, for 64-bit Java (running on 64-bit OS) this amount must be doubled.
# So, you should specify -Xmx1024m, instead of -Xmx512m.
#
# The JVM options below set the initial Java heap size to 512 Mb
# and allow extending it up to 1024 Mb.
#----------------------------------------------------------------------
JAVA_OPTIONS="-Xms512m -Xmx1024m"

#----------------------------------------------------------------------
# DocFlex/XML class path
#----------------------------------------------------------------------
CLASS_PATH="${DFH}/lib/xml-apis.jar:${DFH}/lib/xercesImpl.jar:${DFH}/lib/resolver.jar:${DFH}/lib/docflex-xml.jar"

#----------------------------------------------------------------------
# Run Template Designer.
#
# The '-docflexconfig' option specifies the DocFlex main configuration
# file prepared for Linux (located in this directory).
#
# (Note: double quotes are needed because file pathnames may contain spaces)
#----------------------------------------------------------------------

"${JAVA_HOME}/bin/java" ${JAVA_OPTIONS} -cp "${CLASS_PATH}" com.docflex.xml.Designer \
  -docflexconfig "${DFH}/linux/docflex.config"
