# poet.conf.get
# FROM ubuntu:18.04
FROM debian:10.6-slim

RUN apt-get update \
 && apt-get -y --no-install-recommends install libpoet-perl libjson-xs-perl \
 && apt-get -y autoclean \
 && apt-get -y autoremove \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /etc/apt/sources.list.d/*

COPY rootfs .

ENTRYPOINT ["/entrypoint"]
