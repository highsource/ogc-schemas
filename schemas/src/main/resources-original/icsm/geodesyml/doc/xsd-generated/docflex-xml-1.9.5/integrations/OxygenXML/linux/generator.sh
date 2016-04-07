#!/bin/sh

#----------------------------------------------------------------------
# Specify the location of Sun JRE/JDK 7.x, 6.x, 5.x or 1.4.x here
#----------------------------------------------------------------------
JAVA_HOME="/home/user/jdk1.7"

#----------------------------------------------------------------------
# Specify the location of OxygenXML home directory
#----------------------------------------------------------------------
OXYGENXML_HOME="/home/user/Oxygen XML Editor 15"

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

  DFH=`dirname "$PRG"`/../../..

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
# Note that allocating too much memory isn't good either because it may actually
# decrease the performance, especially when that amount of memory isn't backed
# by the physical RAM on your system.
#
# The JVM options below set the initial Java heap size to 512 Mb
# and allow extending it up to 1024 Mb.
#----------------------------------------------------------------------
JAVA_OPTIONS="-Xms512m -Xmx1024m"

#----------------------------------------------------------------------
# DocFlex/XML class path
#----------------------------------------------------------------------
CLASS_PATH="$DFH/lib/xml-apis.jar:$DFH/lib/xercesImpl.jar:$DFH/lib/resolver.jar:$DFH/lib/docflex-xml.jar"

#----------------------------------------------------------------------
# Run generator with all settings taken from generator.config file
# (found in '{docflex-xml}/config' directory).
#
# The '-docflexconfig' option specifies the DocFlex main configuration
# file prepared for Linux (found in '{docflex-xml}/linux' directory).
#
# The '-m:IMAGE_PROVIDER_CLASS' option specifies the OxygenXML Integration
# main class.
#
# The '-m:OXYGENXML_COMMAND' option specifies the Linux command to call 
# the Oxygen's own XML schema doc-generator. The double quotes within that
# command are necessary (and must be let through) to have a pathname with 
# spaces recognized as a single argument.
#
# Other double quotes are needed also because of possible spaces in file pathnames.
#----------------------------------------------------------------------

"$JAVA_HOME/bin/java" $JAVA_OPTIONS -cp "$CLASS_PATH" com.docflex.xml.Generator \
  -docflexconfig "$DFH/linux/docflex.config" \
  -m:IMAGE_PROVIDER_CLASS=com.docflex.xml.OxygenXML.Kit \
  -m:OXYGENXML_COMMAND="sh \"$OXYGENXML_HOME/schemaDocumentation.sh\""
