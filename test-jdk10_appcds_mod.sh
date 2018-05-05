#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

# AppCDS not supported with user modules, using CDS only

exec $JAVA $JVM_OPTS -Xshare:on --upgrade-module-path $BASE_DIR/upgrade-modules \
      --module-path $BASE_DIR/modules \
      --module $MODULE_NAME
