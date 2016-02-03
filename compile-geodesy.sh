#!/usr/bin/env bash

mvn clean package -DskipTests=true -pl schemas,iso19139/20070417,gml/3.2.1,geodesyml/0.2.1
