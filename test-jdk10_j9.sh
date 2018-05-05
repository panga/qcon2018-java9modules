#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_J9_HOME/bin/java
BASE_DIR=jdk10

exec $JAVA $JVM_OPTS --add-modules java.xml.bind -jar $BASE_DIR/$JAR_NAME
