#!/usr/bin/env bash

CSS_FILE="$HOME/.config/waybar/fullscreen.css"
last_state=""

update_css() {
    state=$(hyprctl activewindow | grep -oP '^\s*fullscreen:\s*\K\w+')
    [ -z "$state" ] && state="0"

    if [ "$state" = "$last_state" ]; then
        return
    fi
    last_state="$state"

    if [ "$state" = "1" ]; then
        cat > "$CSS_FILE" << 'EOF'
#workspaces button.active {
    background-color: @foam;
    color: @base;
}
EOF
    else
        > "$CSS_FILE"
    fi
}

socat -U - UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | \
while read -r line; do
    case "$line" in
        fullscreen*|workspace*|focusedmon*|activewindow*)
            update_css
            ;;
    esac
done