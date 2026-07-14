#!/usr/bin/env bash

SINK="@DEFAULT_AUDIO_SINK@"

case "$1" in
  up)
    if ! wpctl get-volume "$SINK" | grep -q MUTED; then
      wpctl set-volume "$SINK" 5%+ -l 1.0
    fi
    ;;

  down)
    if ! wpctl get-volume "$SINK" | grep -q MUTED; then
      wpctl set-volume "$SINK" 5%-
    fi
    ;;

  mute)
    wpctl set-mute "$SINK" toggle
    ;;
esac