#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

exec $JAVA $JVM_OPTS --add-modules java.xml.bind -Xshare:on -XX:+UseAppCDS -XX:SharedArchiveFile=$BASE_DIR/app.jsa -cp "$BASE_DIR/modules/*:$BASE_DIR/upgrade-modules/*" $MAIN_CLASS
