#!/usr/bin/env bash

WALLPAPER_PFAD="$HOME/bilder/wallpaper"

WALLPAPER_DATEI=$(find "$WALLPAPER_PFAD" -type f -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" |
sort |
rofi -dmenu -p "Hintergründe" -theme-str "entry {enabled: false; }")

matugen image "$WALLPAPER_DATEI" --source-color-index 0


