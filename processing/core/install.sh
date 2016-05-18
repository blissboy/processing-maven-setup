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
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jar -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-gluegen-rt -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/gluegen-rt.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jogl-all -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/jogl-all.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jna -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/jna.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jna-platform -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/jna-platform.jar

# todo: replace macosx with a variable for os
mvn install:install-file -DgroupId=org.processing -DartifactId=core-gluegen-rt-natives -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/gluegen-rt-natives-macosx-universal.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=core-jogl-all-natives -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/jogl-all-natives-macosx-universal.jar


sed -e "s/PROCESSING_VERSION/$PROCESSING_VERSION/g" pom.xml > "pom.$PROCESSING_VERSION.xml"

mvn install:install-file -DgroupId=org.processing -DartifactId=core -Dversion=$PROCESSING_VERSION -Dpackaging=pom -Dfile=./pom.$PROCESSING_VERSION.xml

