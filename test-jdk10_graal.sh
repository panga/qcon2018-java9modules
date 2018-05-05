#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

exec $JAVA $JVM_OPTS --add-modules java.xml.bind -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -Djvmci.Compiler=graal -jar $BASE_DIR/$JAR_NAME
