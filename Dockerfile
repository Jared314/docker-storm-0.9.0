# Dockerfile for Storm 0.9.0 and Oracle Java 7
FROM jared314/ubuntu-12-04-java7
MAINTAINER Jared Lobberecht <jared@lobberecht.com>

ADD assets /tmp
ADD bin /usr/bin

RUN /tmp/build

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $JAVA_HOME/bin:$PATH

ENTRYPOINT ["/usr/bin/run"]
