#!/usr/bin/env bash

zscroll -l 30 \
    --delay 0.3 \
    --update-check true \
    "playerctl metadata --format '{{title}} - {{artist}}'" 2>/dev/null

wait