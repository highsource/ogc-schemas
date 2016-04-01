#!/usr/bin/env bash

mvn clean install -DskipTests=true -pl .,schema-parent,schemas,iso19139/20070417,gml/3.2.1,om/2.0,geodesyml/0.3
