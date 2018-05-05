#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

exec $JAVA $JVM_OPTS \
	-XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -Djvmci.Compiler=graal \
	--upgrade-module-path $BASE_DIR/upgrade-modules \
      --module-path $BASE_DIR/modules \
      --module $MODULE_NAME
