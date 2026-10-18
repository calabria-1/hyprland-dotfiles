#!/usr/bin/env bash
choice=$(printf '%s\n' \
    '󱐋 Leistung' \
    '⚖  Ausgewogen' \
    '  Stromsparen' |
    rofi -dmenu -p "Energiemodus" -theme-str "entry {enabled: false; }")


case "$choice" in
    *Leistung)
        powerprofilesctl set performance
        ;;
    *Ausgewogen)
        powerprofilesctl set balanced
        ;;
    *Stromsparen)
        powerprofilesctl set power-saver
        ;;
esac
