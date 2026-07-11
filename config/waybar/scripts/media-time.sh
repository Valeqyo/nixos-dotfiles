#!/usr/bin/env bash

length=$(playerctl metadata mpris:length 2>/dev/null)

if [ -z "$length" ] || [ "$length" = "0" ]; then
    exit 0
fi

playerctl metadata --format '{{duration(position)}}/{{duration(mpris:length)}}' 2>/dev/null