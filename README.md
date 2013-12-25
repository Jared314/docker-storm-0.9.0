# docker-storm-0.9.0

A Storm 0.9.0 Docker Container

https://github.com/nathanmarz/storm

**Note:** This container does **not** contain a valid Storm configuration file. It is designed to be the parent of a child container containing a valid storm.yaml file.

## Details

- Ubuntu 12.04 x64 (Precise)
- Oracle Java 7
- Storm 0.9.0
    - ZeroMQ 2.1.7
- Daemontools 0.76

## Usage

Create a Dockerfile and provide the desired Storm configuration file.

    FROM jared314/docker-storm-0.9.0
    ADD storm.yaml /usr/share/storm/conf/storm.yaml
