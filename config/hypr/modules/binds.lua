-- Programme
local terminal    = "kitty"
local fileManager = "EDITOR=nvim kitty -e yazi"
local menu        = "rofi -show drun"

--setz WindKey als Super
local mainMod = "SUPER"

-- Custom Bindings
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/.config/rofi/custom-scripts/wallpaper-switcher.sh"))

-- Universale Commands(close/exit)
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close()) -- Fenster schließen
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) -- Beenden von Hyprland mit Super + M


-- Fenster/Workspace Movement
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- switch horizontal/vertikal

-- Fenster Modi
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Fenster tauschen mit SUPER + SHIFT + Key
hl.bind("SUPER + SHIFT + LEFT",  hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + RIGHT", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + UP",    hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + DOWN",  hl.dsp.window.swap({ direction = "down" }))

-- Fesnter Arrangement mit der Maus
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspace 1-10 werden an Nums gebunden
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end


-- Helligkeit für HDMI-A-1 und eDP-1
hl.bind(mainMod .. " + SHIFT + up",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+; ddcutil --display 1 setvcp 10 + 5"),                  { locked = true, repeating = false })
hl.bind(mainMod .. " + SHIFT + down",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-; ddcutil --display 1 setvcp 10 - 5"),                  { locked = true, repeating = false })


-- Audio Quick Settings
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 1%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 1%-"))
