#!/bin/bash

source "./configure.sh"
JAVA=$JDK8_HOME/bin/java
BASE_DIR=jdk8

exec $JAVA $JVM_OPTS -jar $BASE_DIR/$JAR_NAME
