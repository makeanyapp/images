#!/bin/sh
FROM postgres:16.2-alpine3.19 as BUILDER
RUN apk update && \
    apk add --no-cache --upgrade pgbackrest=2.49-r0 && \
    rm -r /var/cache/apk/* && \
    mkdir -p /var/lib/pgbackrest && \
    chmod 750 /var/lib/pgbackrest && \
    chown postgres:postgres /var/lib/pgbackrest