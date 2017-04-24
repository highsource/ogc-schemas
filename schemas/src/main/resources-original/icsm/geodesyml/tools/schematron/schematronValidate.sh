#!/usr/bin/env bash
# Args: 1 - name of input file, 2 - name of output file (optional - defaults to file1-validate.xml)
# Exit code: 1 if validation error, 0 if none

if [ $# -lt 1 ]; then
	echo USAGE: $0 infile OPTIONAL outfile
	exit 1
fi

# Scripts and files are relative to this directory but args may be relative to it
CURRENTDIR=$PWD
THEDIRNAME=`dirname $0`
cd $THEDIRNAME

INFILE=$1
if [[ $INFILE != /* ]]; then 
	# NOT an Absolute path - change relative path to be relateive to where script started
	INFILE=$CURRENTDIR/$INFILE
fi

if [ $# -eq 2 ]; then
	OUTFILE=$2
else
	OUTFILE=$INFILE-validate.xml
fi

echo INFILE: $INFILE
echo OUTFILE: $OUTFILE

JAVA_FLAGS=
function setProxy() {
	if [[ -z $http_proxy ]]; then
		PROXYHOST=
		PROXYPORT=
		return;
	fi
	PROXYHOST=$(echo $http_proxy | sed 's/http[s]*:\/\///' | sed 's/:.*//')
	PROXYPORT=$(echo $http_proxy | sed 's/http[s]*:\/\///' | sed 's/.*://')

	JAVA_FLAGS="-Dhttp.proxyHost=$PROXYHOST -Dhttp.proxyPort=$PROXYPORT -Dhttps.proxyHost=$PROXYHOST -Dhttps.proxyPort=$PROXYPORT"
}

# The cd above made the locations relative to this script
SCHEMATRON_SCRIPT=codeListValidation.sch
SAXON_HOME=./saxon
SAXON_JAR=$SAXON_HOME/saxon9he.jar
SCHEMATRON_HOME=./schematron

setProxy

echo JAVA_FLAGS: $JAVA_FLAGS

# Build the XSLT for the schematron
java $JAVA_FLAGS \
		-jar $SAXON_JAR \
		-s:$SCHEMATRON_SCRIPT \
		-xsl:$SCHEMATRON_HOME/iso_svrl_for_xslt2_with_diagnostics.xsl \
		-o:$SCHEMATRON_SCRIPT.xsl

# Validate the input using the Schematron XSLT
java $JAVA_FLAGS \
		-jar $SAXON_JAR \
		-s:$INFILE -xsl:$SCHEMATRON_SCRIPT.xsl \
		-o:$OUTFILE

FAILURES=$(grep -i "failed-assert" $OUTFILE)

CODE=$?
# 0 is 'lines are selected' and 2 is 'some error'
if [ $CODE -eq 2 ] || [ $CODE -eq 0 ]; then
	echo Validate failed
	grep -i "failed-assert" $OUTFILE
	exit 1
fi

exit 0
