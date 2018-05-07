#!/bin/bash

source "./configure.sh"

docker build jdk10 --tag app-jdk10-appcds --build-arg JVM_OPTS="$JVM_OPTS" --file Dockerfile.jdk10_appcds

# TODO: Automatic dump of app.jsa using following commands:
# java --add-modules java.xml.bind -Xshare:off -XX:+UseAppCDS -XX:DumpLoadedClassList=/opt/app/app.lst -cp "/opt/app/modules/*:/opt/app/upgrade-modules/*" org.springframework.samples.petclinic.PetClinicApplication
# java --add-modules java.xml.bind -Xshare:dump -XX:+UseAppCDS -XX:SharedClassListFile=/opt/app/app.lst -XX:SharedArchiveFile=/opt/app/app.jsa -cp "/opt/app/modules/*:/opt/app/upgrade-modules/*" org.springframework.samples.petclinic.PetClinicApplication
