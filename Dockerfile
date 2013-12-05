# Dockerfile for Storm 0.9.0 and Oracle Java 7
FROM ubuntu:precise
MAINTAINER Jared Lobberecht <jared@lobberecht.com>

ADD assets /tmp
ADD bin /usr/bin

RUN /tmp/build

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /
CMD ["run"]
