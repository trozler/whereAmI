#!/bin/sh

#August 30th 2020; Made POSIX compatible.

(
RESP=$(curl -s ifconfig.me) \
&& curl -s "https://tools.keycdn.com/geo.json?host={$RESP}" | sed 's'/\
'.*"ip":"\([.0-9:A-Fa-f]\{7,39\}\)",'\
'.*"country_name":"\([a-zA-z]*\)",'\
'.*"region_code":"\([a-zA-z]*\)",'\
'.*"city":"\([[:alpha:]]*\)",'\
'.*$/'\
'\1 - \4, \3, \2./'
) || echo "lost - somewhere off the shoulder of Orion";

