#!/usr/bin/env bash

CITY="Romano di Lombardia"
COUNTRY="Italy"

# Sostituisce gli spazi con + per l'URL
LOCATION=$(echo "$CITY,$COUNTRY" | sed 's/ /+/g')

weather=$(curl -s "wttr.in/${LOCATION}?format=%c+%t" 2>/dev/null)

if [ -z "$weather" ]; then
    echo "Meteo non disponibile"
else
    echo "$weather  $CITY"
fi
