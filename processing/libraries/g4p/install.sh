#!/bin/sh

## this script is expected to be invoked from another script, which will set the following values:
#
#  PROCESSING_APP_DIR - The directory that is the processing app
#  PROCESSING_SKETCHBOOK_DIR - The directory that is the processing sketchbook dir.
#  PROCESSING_VERSION - version that all these libraries / pom will be tagged with

##
## Files for g4p Library
## https://sourceforge.net/p/g4p/code/ci/master/tree/
##

## todo: should determine version from prettyversion property in library.properties
mvn install:install-file -DgroupId=g4p -DartifactId=controls -Dversion=4.1.1 -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/G4P/library/G4P.jar