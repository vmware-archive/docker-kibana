#!/bin/sh

if [ -z "${SERVICENAME}" ]; then
	SERVICENAME="elasticsearch-9200.service.consul"
fi

host=`dig $SERVICENAME SRV | awk "/^$SERVICENAME/ {print  \\$8 \":\" \\$7  }" | head -1 | sed 's/\.:/:/g;'`;  echo $hosts

exec /docker-entrypoint.sh kibana --elasticsearch http://$host "$@"
