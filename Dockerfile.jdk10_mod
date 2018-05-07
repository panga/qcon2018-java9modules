FROM panga/openjdk10:jdk-alpine as builder

RUN jlink \
    --module-path /opt/jdk/jmods \
    --add-modules java.sql,java.naming,java.management,java.instrument,java.xml.bind \
    --verbose \
    --strip-debug \
    --compress 2 \
    --no-header-files \
    --no-man-pages \
    --output /opt/jre-minimal

FROM alpine:3.7

COPY --from=builder /opt/jre-minimal /opt/jre-minimal

ENV LANG=C.UTF-8 \
    JAVA_HOME=/opt/jre-minimal \
    PATH=${PATH}:/opt/jre-minimal/bin

ADD modules /opt/app/modules
ADD upgrade-modules /opt/app/upgrade-modules

ARG JVM_OPTS
ENV JVM_OPTS=${JVM_OPTS}

CMD exec java ${JVM_OPTS} --upgrade-module-path /opt/app/upgrade-modules \
      --module-path /opt/app/modules \
      --module org.springframework.samples.petclinic