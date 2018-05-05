#!/bin/bash

source "./configure.sh"
JAVA=$JDK10_HOME/bin/java
BASE_DIR=jdk10

# AppCDS not supported with user modules, using CDS only

#$JAVA -Xshare:off -XX:+UseAppCDS -XX:DumpLoadedClassList=$BASE_DIR/modules.lst \
#	--upgrade-module-path $BASE_DIR/upgrade-modules \
#	--module-path $BASE_DIR/modules \
#	--module $MODULE_NAME

#$JAVA -Xshare:dump -XX:+UseAppCDS -XX:SharedClassListFile=$BASE_DIR/modules.lst \
#	-XX:SharedArchiveFile=$BASE_DIR/modules.jsa \
#	--upgrade-module-path $BASE_DIR/upgrade-modules \
#	--module-path $BASE_DIR/modules \
#	--module $MODULE_NAME

exec $JAVA -Xshare:dump
