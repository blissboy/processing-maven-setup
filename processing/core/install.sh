#!/bin/sh

## this script is expected to be invoked from another script, which will set the following values:
#
#  PROCESSING_APP_DIR - The directory that is the processing app
#  PROCESSING_SKETCHBOOK_DIR - The directory that is the processing sketchbook dir.
#  PROCESSING_VERSION - version that all these libraries / pom will be tagged with

##
## Files in Processing core library
##

echo processing version = $PROCESSING_VERSION
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jar -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/core.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-gluegen-rt -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/gluegen-rt.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jogl-all -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/jogl-all.jar

sed -e "s/PROCESSING_VERSION/$PROCESSING_VERSION/g" pom.xml > "pom.$PROCESSING_VERSION.xml"

mvn install:install-file -DgroupId=org.processing -DartifactId=core -Dversion=$PROCESSING_VERSION -Dpackaging=pom -Dfile=./pom.$PROCESSING_VERSION.xml

