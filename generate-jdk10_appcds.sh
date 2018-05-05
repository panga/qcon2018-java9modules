#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

#$JAVA --add-modules java.xml.bind -Xshare:off -XX:+UseAppCDS -XX:DumpLoadedClassList=$BASE_DIR/app.lst -jar $BASE_DIR/$JAR_NAME

#$JAVA --add-modules java.xml.bind -Xshare:dump -XX:+UseAppCDS -XX:SharedClassListFile=$BASE_DIR/app.lst -XX:SharedArchiveFile=$BASE_DIR/app.jsa -jar $BASE_DIR/$JAR_NAME

$JAVA --add-modules java.xml.bind -Xshare:off -XX:+UseAppCDS -XX:DumpLoadedClassList=$BASE_DIR/app.lst -cp "$BASE_DIR/modules/*:$BASE_DIR/upgrade-modules/*" $MAIN_CLASS

$JAVA --add-modules java.xml.bind -Xshare:dump -XX:+UseAppCDS -XX:SharedClassListFile=$BASE_DIR/app.lst -XX:SharedArchiveFile=$BASE_DIR/app.jsa -cp "$BASE_DIR/modules/*:$BASE_DIR/upgrade-modules/*" $MAIN_CLASS
