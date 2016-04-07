#!/bin/sh
#----------------------------------------------------------------------
# This shell script file will help you to update your templates according
# to the new DocFlex/XML version or new license you are using now
#----------------------------------------------------------------------

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
# DocFlex/XML class path
#----------------------------------------------------------------------
CLASS_PATH="${DFH}/lib/xml-apis.jar:${DFH}/lib/xercesImpl.jar:${DFH}/lib/resolver.jar:${DFH}/lib/docflex-xml.jar"

#----------------------------------------------------------------------
# The '-updatetemplates' option specifies the directory containing
# templates to be updated.
#
# The '-r' option will include all the template directory subtree.
#
# (Note: double quotes are needed because file pathnames may contain spaces)
#----------------------------------------------------------------------

"${JAVA_HOME}/bin/java" -cp "${CLASS_PATH}" com.docflex.xml.Designer -updatetemplates "${DFH}/templates" -r

echo "** done **"
sleep 10
