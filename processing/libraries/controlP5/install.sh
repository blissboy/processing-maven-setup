#!/bin/sh

## this script is expected to be invoked from another script, which will set the following values:
#
#  PROCESSING_APP_DIR - The directory that is the processing app
#  PROCESSING_SKETCHBOOK_DIR - The directory that is the processing sketchbook dir.
#  PROCESSING_VERSION - version that all these libraries / pom will be tagged with

##
## Files in Processing core library
##

## todo: should determine version from prettyversion property in library.properties
mvn install:install-file -DgroupId=sojamo -DartifactId=controlP5 -Dversion=2.2.6 -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/controlP5/library/controlP5.jar