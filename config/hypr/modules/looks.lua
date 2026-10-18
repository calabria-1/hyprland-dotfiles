-- Aussehen und Animationen

-- die Farben aus der Matugen-Datei werden entnommen und lokal variablisiert
local colors = require("modules.hyprland-colors")

-- Aussehen
hl.config({
    general = {
	-- Lücken zwischen Fenstern und Rand
        gaps_in  = 2,
        gaps_out = 3,

	-- Rahmendicke
        border_size = 2,

	-- aktive und inaktive Rahmenfarben
        col = {
            active_border   = colors.primary,
            inactive_border = colors.outline_variant,
        },
	
	-- nützliche WIKI-Settings
        resize_on_border = false,
        allow_tearing = false,
        
	-- Fenster-Layout (master,dwinle,scrolling)
	layout = "dwindle",
    },

    decoration = {
        -- Rundungen 
	rounding       = 10,
        rounding_power = 10,

	-- sorgt mit Blur für Milchglas-Look
        active_opacity   = 0.9,
        inactive_opacity = 0.9,

        shadow = {
            enabled      = true,
            range        = 1,
            render_power = 5,
            color        = 0x111111ee, -- bisschen dunkler als default Value
        },

	-- sorgt für relativ starke Blur
        blur = {
            enabled   = true, 
            size      = 8,
	    passes    = 4,
	    ignore_opacity	= true, -- optional
	    new_optimizations	= true, -- optional
    	    enabled = true,
    	},
    },
})


-- Animationen
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
--kein default!!
hl.curve("easy",           { type = "spring", mass = 0.51, stiffness = 300, dampening = 24.21279333 })

--default werte, relativ gut
hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })


-- lassen!
hl.config({
    dwindle = {
        preserve_split = true, 
    },
})

-- für andere Layouts interessant
--hl.config({
--    master = {
--        new_status = "master",
--    },
--})

--hl.config({
--    scrolling = {
--        fullscreen_on_one_column = true,
--    },
--})
