#REGION=$(grep -Eo '"region_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')
#COUNTRY=$(grep -Eo '"country_name":.*?[^\\],' <<< "$LOC" | sed 's/^.*:"//;s/",//')