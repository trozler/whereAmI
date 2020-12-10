#!/bin/sh

(
RESP=$(curl -s ifconfig.me) \
&& curl -s "https://tools.keycdn.com/geo.json?host={$RESP}" | sed 's'/\
'.*"ip":"\([.0-9:A-Fa-f]\{7,39\}\)",'\
'.*"country_name":"\([a-zA-Z ]*\)",'\
'.*"region_code":"\([a-zA-Z]*\)",'\
'.*"city":"\([[:alpha:]]*\)",'\
'.*$/'\
'\1 - \4, \3, \2.\n/'
) || echo "lost - somewhere off the shoulder of Orion";

