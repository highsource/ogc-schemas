#!/bin/bash
DIR=`pwd`
cd ../xsd/
xmllint --noout --schema wami_1_0_2.xsd $DIR/example*.xml
