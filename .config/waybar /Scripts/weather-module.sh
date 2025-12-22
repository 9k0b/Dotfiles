#!/usr/bin/env bash
#thanks gbt oss only had to dbug
LOCATION=${1:-"Berlin"}          

for i in {1..5}; do
    TEXT=$(curl -s "https://wttr.in/${LOCATION}?format=1")
    if [[ $? == 0 && -n $TEXT ]]; then
        TOOLTIP=$(curl -s "https://wttr.in/${LOCATION}?format=4")
        if [[ $? == 0 && -n $TOOLTIP ]]; then
        
            echo "{\"text\":\"$TEXT\",\"tooltip\":\"$TOOLTIP\"}"
            exit 0
        fi
    fi
    sleep 2
done
echo '{"text":"❌","tooltip":"Wetter nicht erreichbar"}'
