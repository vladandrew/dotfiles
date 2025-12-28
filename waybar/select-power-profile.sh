#!/bin/bash

# Show rofi menu and get selection
selected=$(echo -e "powersave\nbalanced" | rofi -dmenu -p "Power Profile" -i)

# If user made a selection, apply it
if [[ -n "$selected" ]]; then
    tuned-adm profile "$selected"
fi
