#!/usr/bin/env bash

state=$(hyprctl devices | grep -B2 "main: yes" | grep "capsLock" | awk '{print $2}')

if [ "$state" == "yes" ]; then
    echo '{"text": "󰪛", "class": "caps-on", "tooltip": "Caps Lock: ON"}'
else
    echo '{"text": "", "class": "caps-off", "tooltip": "Caps Lock: OFF"}'
fi