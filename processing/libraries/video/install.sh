#!/bin/sh

#
### video
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-jna -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/jna.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-gstreamer -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/gstreamer-java.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-video -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/video.jar
#mvn install:install-file -DgroupId=org.processing -DartifactId=video-jna -Dversion=$PROCESSING_VERSION -Dpackaging=jar -Dfile=$PROCESSING_SKETCHBOOK_DIR/libraries/video/library/jna.jar

sed -e "s/PROCESSING_VERSION/$PROCESSING_VERSION/g" ./payload/pom.xml > "./payload/pom.$PROCESSING_VERSION.xml"
sed -i '' "s@PROCESSING_SKETCHBOOK_LOCATION@$PROCESSING_SKETCHBOOK_DIR@g" "./payload/pom.$PROCESSING_VERSION.xml"

mvn install:install-file -DgroupId=org.processing -DartifactId=video -Dversion=$PROCESSING_VERSION -Dpackaging=pom -Dfile=./payload/pom.$PROCESSING_VERSION.xml
