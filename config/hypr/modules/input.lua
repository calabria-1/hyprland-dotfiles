-- Tastatur Config
hl.config({
    input = {
        kb_layout  = "de", -- deutsches Layout
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
	
	-- Maus folgt Fenster Switch(sehr nützlich)
        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
	
	-- scroll oben = movement oben
        touchpad = {
            natural_scroll = false,
        },
    },
})

