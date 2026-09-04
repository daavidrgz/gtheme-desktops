local vars = require("variables")

-- NOTE: `misc:vfr` was moved to `debug:vfr` in Hyprland 0.55 (it is a diagnostic knob).
-- The old value here was `true`, which is already the default, so it is simply dropped.
hl.config({
    misc = {
        vrr = 1,

        animate_manual_resizes        = false,
        animate_mouse_windowdragging  = false,

        disable_hyprland_logo   = true,
        force_default_wallpaper = 0,

        allow_session_lock_restore = true,
        middle_click_paste         = false,
        focus_on_activate          = true,

        mouse_move_enables_dpms = true,
        key_press_enables_dpms  = true,

        background_color = "rgb(" .. (vars.scheme.surfaceContainer or "1a1b26") .. ")",
    },
})
