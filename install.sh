#!/bin/sh


PROCESSING_APP_DIR=/Users/patwheaton/devel/processing-versions/Processing-3.0.2.app/
PROCESSING_SKETCHBOOK_DIR=/Users/patwheaton/Dropbox/develop/Processing3Sketchbook/
PROCESSING_VERSION=3.0.2

# TODO sanity check dirs

## set -x

##
## core
##
pushd processing/core
. ./install.sh
popd

##
## modes
##


##
## libraries
##

## video
pushd processing/libraries/video
. ./install.sh
popd


##
## Files in Processing core library
##
#mvn install:install-file -DgroupId=org.processing -DartifactId=core -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/core.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=gluegen-rt -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/gluegen-rt.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=jogl-all -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/core/library/jogl-all.jar
#
###
### modes
###
#mvn install:install-file -DgroupId=org.processing -DartifactId=dxf -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/modes/java/libraries/dxf/library/dxf.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=net -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/modes/java/libraries/net/library/net.jar
### todo: change this to POM (since two files in dxf)
#mvn install:install-file -DgroupId=org.processing -DartifactId=dxf -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/modes/java/libraries/dxf/library/dxf.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=pdf -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_APP_DIR/Contents/Java/modes/java/libraries/pdf/library/pdf.jar
#
###
### things in library
###
#
### video
### todo: change this to bom pom
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-jna -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/jna.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-gstreamer -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/gstreamer-java.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-video -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/video.jar
#
#
#
