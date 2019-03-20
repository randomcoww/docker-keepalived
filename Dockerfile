FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache \
    keepalived

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
