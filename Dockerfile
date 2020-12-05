FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache \
    keepalived \
    nftables \
    ipvsadm

ENTRYPOINT ["/usr/sbin/keepalived", "-l", "-n"]
