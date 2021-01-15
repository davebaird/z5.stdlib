# z5.zenika
FROM zenika/alpine-chrome

ENV Z5_UID=1000 \
    Z5_GID=1000

USER root

RUN apk add --no-cache su-exec

COPY rootfs /

ENTRYPOINT ["/entrypoint"]
