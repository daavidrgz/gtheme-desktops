local vars = require("variables")

hl.config({
    general = {
        layout = "dwindle",

        allow_tearing = false,

        gaps_workspaces = vars.workspaceGaps,
        gaps_in         = vars.windowGapsIn,
        gaps_out        = vars.windowGapsOut,
        border_size     = vars.windowBorderSize,

        col = {
            active_border   = vars.activeWindowBorderColour,
            inactive_border = vars.inactiveWindowBorderColour,
        },
    },

    dwindle = {
        preserve_split = true,
        force_split    = 2,
        smart_resizing = true,
    },

    master = {
        new_status = "master",
    },
})
