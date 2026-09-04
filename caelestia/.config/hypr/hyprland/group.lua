local vars = require("variables")
local scheme = vars.scheme

hl.config({
    group = {
        col = {
            border_active          = vars.activeWindowBorderColour,
            border_inactive        = vars.inactiveWindowBorderColour,
            border_locked_active   = vars.activeWindowBorderColour,
            border_locked_inactive = vars.inactiveWindowBorderColour,
        },

        groupbar = {
            font_family                = "CaskaydiaCove Nerd Font",
            font_size                  = 15,
            gradients                  = true,
            gradient_round_only_edges  = false,
            gradient_rounding          = 5,
            height                     = 25,
            indicator_height           = 0,
            gaps_in                    = 3,
            gaps_out                   = 3,

            text_color = "rgb(" .. (scheme.onPrimary or "1a1b26") .. ")",
            col = {
                active          = "rgba(" .. (scheme.primary or "7aa2f7") .. "d4)",
                inactive        = "rgba(" .. (scheme.outline or "565f89") .. "d4)",
                locked_active   = "rgba(" .. (scheme.primary or "7aa2f7") .. "d4)",
                locked_inactive = "rgba(" .. (scheme.secondary or "7dcfff") .. "d4)",
            },
        },
    },
})
