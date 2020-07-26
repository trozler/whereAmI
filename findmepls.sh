#!/bin/bash

RESP=$(curl -s "ifconfig.me" -w "%{http_code}");
IP=${RESP: 0:${#RESP} - 3};
if [ ${RESP: -3} != "200" ]; then
    echo "lost - somehwere of the shoulder of Orion";
else
    LOC=$(curl -s "https://tools.keycdn.com/geo.json?host={$IP}");
    printf "%s - %s, %s.\n" "$IP" "$(grep -Eo '"region_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')" "$(grep -Eo '"country_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')";
fi
