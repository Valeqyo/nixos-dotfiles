#!/usr/bin/env bash

## Applets : Screenshot & Recording

# Import Current Theme
source "$HOME"/.config/rofi/screenshot/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Screenshot'
mesg="DIR: `xdg-user-dir PICTURES`/screenshots"

list_col='1'
list_row='4'
win_width='120px'

# Options
option_1=""
option_2="󰨵"
option_3="󰕧"
option_4="󰑋"

# Rofi CMD
rofi_cmd() {
rofi -theme-str "window {width: $win_width;}" \
-theme-str "listview {columns: $list_col; lines: $list_row;}" \
-theme-str 'textbox-prompt-colon {str: "";}' \
-theme-str 'element-text {horizontal-align: 0.5; vertical-align: 0.5;}' \
-dmenu \
-p "$prompt" \
-mesg "$mesg" \
-markup-rows \
-theme ${theme}
pkill rofi
}

# Pass variables to rofi dmenu
run_rofi() {
echo -e "$option_1\n$option_2\n$option_3\n$option_4" | rofi_cmd
}

# Dirs
dir="`xdg-user-dir PICTURES`/screenshots"
video_dir="`xdg-user-dir VIDEOS`/recordings"

if [[ ! -d "$dir" ]]; then
mkdir -p "$dir"
fi
if [[ ! -d "$video_dir" ]]; then
mkdir -p "$video_dir"
fi

# Screenshot - schermo intero
shotnow () {
grim - | satty -f -
}

# Screenshot - sezione
shotarea () {
grim -g "$(slurp)" - | satty -f -
}

# Recording - toggle (stop if already running, otherwise start) - full screen
recnow () {
if pgrep -x wf-recorder >/dev/null; then
pkill -INT wf-recorder
notify-send "Recording" "Recording saved."
return
fi

file="$video_dir/$(date +%Y-%m-%d_%H-%M-%S).mp4"
notify-send "Recording" "Starting recording (full screen)..."
wf-recorder -f "$file" &
}

# Recording - toggle (stop if already running, otherwise start) - selected area
recarea () {
if pgrep -x wf-recorder >/dev/null; then
pkill -INT wf-recorder
notify-send "Recording" "Recording saved."
return
fi

geometry="$(slurp)"
if [[ -z "$geometry" ]]; then
exit 0
fi

file="$video_dir/$(date +%Y-%m-%d_%H-%M-%S).mp4"
notify-send "Recording" "Starting recording (selected area)..."
wf-recorder -g "$geometry" -f "$file" &
}

# Execute Command
run_cmd() {
if [[ "$1" == '--opt1' ]]; then
shotnow
elif [[ "$1" == '--opt2' ]]; then
shotarea
elif [[ "$1" == '--opt3' ]]; then
recnow
elif [[ "$1" == '--opt4' ]]; then
recarea
fi
}

# Actions
chosen="$(run_rofi)"

if [[ -z "$chosen" ]]; then
exit 0
fi

case ${chosen} in
$option_1)
run_cmd --opt1
;;
$option_2)
run_cmd --opt2
;;
$option_3)
run_cmd --opt3
;;
$option_4)
run_cmd --opt4
;;
esac