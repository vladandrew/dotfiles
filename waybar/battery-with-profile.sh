#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null | head -1)
status=$(cat /sys/class/power_supply/BAT*/status 2>/dev/null | head -1)

profile=$(tuned-adm active 2>/dev/null | awk '{print $4}')
if [[ -z "$profile" ]]; then
    profile="unknown"
fi

# Set visual indicator for profile
case "$profile" in
    "powersave")
        profile_icon="- save"
        ;;
    "balanced")
        profile_icon="- std"
        ;;
    *)
        profile_icon="?"
        ;;
esac

if [[ "$status" == "Charging" ]]; then
    prefix="ac"
else
    prefix="bat"
fi

echo "{\"text\":\"$capacity% $profile_icon\",\"tooltip\":\"Power Profile: $profile\\nClick to select mode\",\"class\":\"$status\"}"
