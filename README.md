# processing-maven-setup
mvn install scripts and binaries for libraries I like.

### use / installation
 
- update vars in ./install.sh
~~~~
PROCESSING_APP_DIR=/Users/patwheaton/devel/processing-versions/Processing-3.1.1.app/
PROCESSING_SKETCHBOOK_DIR=/Users/patwheaton/Documents/Processing3Sketchbook/
PROCESSING_VERSION=3.1.1
~~~~

Note that the version may matter, as things do sometimes move between versions. Said differently, don't necessarily expect this tool to work for versions of Processing besides the one specified. 

You can look for branches for other versions as needed, I try to commit there before merging to master. 

in a terminal, run the install script

~~~~
./install.sh
~~~~
You should see output similar to the following: 

#todo:

Once installed, you can then create a pom 