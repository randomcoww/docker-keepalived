#!/bin/sh

if [ -n "$KEEPALIVED_LOCAL_CONFIG" ]; then
  echo -en "$KEEPALIVED_LOCAL_CONFIG" > /etc/keepalived/keepalived.conf
fi

## start
rm -f /var/run/keepalived.pid
exec keepalived "$@" \
  -l -n -D -f /etc/keepalived/keepalived.conf
