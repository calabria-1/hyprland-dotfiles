#!/usr/bin/env bash
profile=$(powerprofilesctl get)

case "$profile" in
    power-saver)  profile="Stromsparen" ;;
    balanced)     profile="Ausgewogen" ;;
    performance)  profile="Leistung" ;;
esac

battery_level=$(cat /sys/class/power_supply/BAT1/capacity)

if ((  battery_level >= 80 )); then
    icon=""
elif (( battery_level >= 60 )); then
    icon=""
elif (( battery_level >= 40 )); then
    icon=""
elif (( battery_level >= 20 )); then
    icon=""
else
    icon=""
fi

echo "{\"text\":\"${icon} ${battery_level}%\", \"tooltip\":\"Energieprofil: $profile\"}"
