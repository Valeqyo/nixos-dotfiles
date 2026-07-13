#!/usr/bin/env bash

MAX_CHARS=60
ICON="󰝚 "  # icona nota musicale (Nerd Font)

players=$(playerctl -l 2>/dev/null)

for p in $players; do
    if [ "$(playerctl -p "$p" status 2>/dev/null)" = "Playing" ]; then
        artist=$(playerctl -p "$p" metadata artist 2>/dev/null)
        title=$(playerctl -p "$p" metadata title 2>/dev/null)

        if [ -n "$artist" ]; then
            song="$title - $artist"
        else
            song="$title"
        fi

        if [ ${#song} -gt $MAX_CHARS ]; then
            song="${song:0:$MAX_CHARS}..."
        fi

        echo "$ICON $song"
        exit 0
    fi
done


