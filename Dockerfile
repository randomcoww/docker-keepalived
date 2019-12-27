FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache \
    keepalived

ENTRYPOINT ["/usr/sbin/keepalived", "-l", "-n"]
