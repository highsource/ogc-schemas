#!/bin/sh

#----------------------------------------------------------------------
# Specify the location of XMLSpy home directory and XMLSpy version
#----------------------------------------------------------------------
XMLSPY_HOME='C:\Program Files\Altova\XMLSpy2014'
XMLSPY_VERSION='2014'

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
#----------------------------------------------------------------------
JAVA_OPTIONS="-Xms512m -Xmx1024m"

#----------------------------------------------------------------------
# DocFlex/XML class path
#----------------------------------------------------------------------
CLASSPATH="$DFH/lib/xml-apis.jar;$DFH/lib/xercesImpl.jar;$DFH/lib/resolver.jar;$DFH/lib/docflex-xml.jar"

#----------------------------------------------------------------------
# Specify the XMLSpy Integration class as element image provider and
# pass XMLSpy version to the integration
#----------------------------------------------------------------------
OPTIONS="-m:IMAGE_PROVIDER_CLASS=com.docflex.xml.xmlspy.SpyKit -m:XMLSPY_VERSION=$XMLSPY_VERSION"

#----------------------------------------------------------------------
# XMLSpy class path (for all XMLSpy API versions together)
#----------------------------------------------------------------------
OPTIONS="$OPTIONS -m:XMLSPY_CLASSPATH='$XMLSPY_HOME\\XMLSpyInterface.jar;$XMLSPY_HOME\\JavaAPI\\XMLSpyAPI.jar;$XMLSPY_HOME\\JavaAPI\\AltovaAutomation.jar'"

#----------------------------------------------------------------------
# Specify XMLSpy library path (the location of Windows DLLs that
# implement the bridge between XMLSpy Java API v2012 and XMLSpy.exe)
#----------------------------------------------------------------------
OPTIONS="$OPTIONS -m:XMLSPY_LIBPATH='$XMLSPY_HOME\\JavaAPI'"
            
#----------------------------------------------------------------------
# Run generator
#----------------------------------------------------------------------
# The 'eval' is needed here to have all arguments containing spaces
# passed correctly. Otherwise, such arguments get broken into several ones,
# which spoils the whole Java command line.
#----------------------------------------------------------------------
eval "wine java $JAVA_OPTIONS -cp '$CLASSPATH' com.docflex.xml.Generator $OPTIONS"
