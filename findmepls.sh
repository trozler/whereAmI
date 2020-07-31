#!/bin/bash

set -eE

{
  RESP=$(curl -s "ifconfig.me")
  LOC=$(curl -s "https://tools.keycdn.com/geo.json?host={$RESP}")
  printf "%s - %s, %s.\n" "$RESP" "$(grep -Eo '"region_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')" "$(grep -Eo '"country_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')"
} || echo "lost - somewhere off the shoulder of Orion"
