FROM alpine:latest

RUN \
  apk add --no-cache keepalived

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
