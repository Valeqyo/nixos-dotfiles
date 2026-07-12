#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/clipboard/"
theme='style-2'

# ## Run
# rofi \
#     -dmenu \
#     -display-columns 2 \
#     -theme ${dir}/${theme}.rasi \
#     pkill rofi

if pgrep -x rofi > /dev/null; then
    pkill rofi
    exit 0
fi

tmpdir="/tmp/cliphist-rofi"
mkdir -p "$tmpdir"

cliphist list | while IFS= read -r line; do
    id="${line%%$'\t'*}"
    data="${line#*$'\t'}"

    if [[ "$data" == *"binary data"* ]]; then
        img="$tmpdir/$id.png"

        # Genera la miniatura solo se non esiste già
        if [[ ! -f "$img" ]]; then
            cliphist decode <<<"$line" >"$img"
        fi

        printf '%s\0icon\x1f%s\n' "$line" "$img"
    else
        printf '%s\n' "$line"
    fi
done | rofi \
    -dmenu \
    -display-columns 2 \
    -show-icons \
    -theme "${dir}/${theme}.rasi"
