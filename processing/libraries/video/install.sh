#!/bin/sh

#
### video
### todo: change this to bom pom
mvn install:install-file -DgroupId=org.processing -DartifactId=video-jna -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/jna.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=video-gstreamer -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/gstreamer-java.jar
mvn install:install-file -DgroupId=org.processing -DartifactId=video-video -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/video.jar

sed -e "s/PROCESSING_VERSION/$PROCESSING_VERSION/g" pom.xml > "pom.$PROCESSING_VERSION.xml"

mvn install:install-file -DgroupId=org.processing -DartifactId=video -Dversion=$PROCESSING_VERSION -Dpackaging=pom -Dfile=./pom.$PROCESSING_VERSION.xml
