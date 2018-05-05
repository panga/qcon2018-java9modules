#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_J9_HOME/bin/java
BASE_DIR=jdk10

exec $JAVA $JVM_OPTS --add-modules java.xml.bind -XX:+IdleTuningGcOnIdle -Xtune:virtualized -Xscmx128m -Xscmaxaot100m -Xshareclasses:cacheDir=$BASE_DIR/shareclasses -cp "$BASE_DIR/modules/*:$BASE_DIR/upgrade-modules/*" $MAIN_CLASS
