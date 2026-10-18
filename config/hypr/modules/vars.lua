-- Umgebungsvariablen

-- Cursor
-- die 4 Variablen setzen jeweils für XCURSOR und HYPRCURSOR, die Größe und das Thema des Cursors
hl.env("XCURSOR_SIZE", "20")
hl.env("HYPRCURSOR_SIZE", "20")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")

-- Qt
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct") -- sagt Qt basieren Apps, das qt5ct-Backend zu nutzen
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1") -- automatisches scalen, anhand der Pixeldichte des Monitors
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1") -- deaktiviert Fenster Dekoration für Qt basierte Apps


-- Hyprland
hl.env("HYPRLAND_CONFIG", "~/.config/hypr/hyprland.lua") -- spezifiziert den Speicherort der Hyprland-Konfiguration

-- Aquamarine
-- hl.env("AQ_FORCE_LINEAR_BLIT", "0") -- Debugging für Nvidia/- Multi GPU Setups - sorgt für Lags oder Verzögerung auf dem 2.Monitor

-- GDK Backends
hl.env("GDK_BACKEND", "wayland,x11,*") -- sagt der App, dass zuerst wayland, danach X11 genutzt werden soll
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- sagt der App, dass zuerst wayland, danach X11 genutzt werden soll

-- Nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia") -- ermöglicht Hardwarebeschleinigung auf Nvidia GPU's

-- XDG
-- die 3 Variablen setzen, wichtige XDG Variablen, wobei sie auch durch das "xdg-desktop-portal-hyprland/xdg" gesetzt werden
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto") -- Aktiviert nativen Wayland Support für Electron
