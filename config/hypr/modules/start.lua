-------------------
---- AUTOSTART ----


hl.on("hyprland.start", function () 
  hl.exec_cmd("awww-daemon & awww img ~/bilder/wallpaper/current") --für Wallpaper
  hl.exec_cmd("systemctl --user start hyprpolkitagent") -- Polkit
  hl.exec_cmd("hyprsunset &") -- für Blaulichtfilter
  hl.exec_cmd("waybar &") -- für die Statusbar
  hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=secrets") -- für den Os-Keyring
end)
