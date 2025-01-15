#!/bin/bash

# Kill running instances
killall -q waybar

# Wait for running processes
while pgrep -x waybar >/dev/null; do
    sleep 0.1;
done

# Launch bar
waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
