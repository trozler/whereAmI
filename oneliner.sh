{ curl -s "ifconfig.me" >> /dev/null 2>&1 && RESP=$(curl -s "ipinfo.io") && \
 printf "%s - %s, %s.\n" "$(grep -Eo '"ip":.*?[^\\],' <<< "$RESP" | sed 's/^.*: "//;s/",//')" "$(grep -Eo '"city":.*?[^\\],' <<< "$RESP" | sed 's/^.*: "//;s/",//')" "$(grep -Eo '"country":.*?[^\\],' <<< "$RESP" | sed 's/^.*: "//;s/",//')"; } || \
  echo "lost - somewhere off the shoulder of Orion";
