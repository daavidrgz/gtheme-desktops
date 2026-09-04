local vars = require("variables")

local mainMod  = "SUPER"
local terminal = vars.terminal

-- caelestia keeps every bind inside a `global` submap so the shell can suspend all
-- keybinds at once (`hyprctl dispatch 'hl.dsp.submap("reset")'`) and restore them.
hl.define_submap("global", function()

    -- ──────────────────────────────────────
    --   CAELESTIA SHELL IPC
    -- ──────────────────────────────────────

    -- Launcher (Super+Space, like hypr's rofi)
    hl.bind(mainMod .. " + space", hl.dsp.global("caelestia:launcher"))

    -- Brightness (via shell OSD)
    hl.bind("XF86MonBrightnessUp",   hl.dsp.global("caelestia:brightnessUp"),   { locked = true })
    hl.bind("XF86MonBrightnessDown", hl.dsp.global("caelestia:brightnessDown"), { locked = true })

    -- Media (via shell OSD)
    hl.bind("XF86AudioPlay",  hl.dsp.global("caelestia:mediaToggle"), { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.global("caelestia:mediaToggle"), { locked = true })
    hl.bind("XF86AudioNext",  hl.dsp.global("caelestia:mediaNext"),   { locked = true })
    hl.bind("XF86AudioPrev",  hl.dsp.global("caelestia:mediaPrev"),   { locked = true })
    hl.bind("XF86AudioStop",  hl.dsp.global("caelestia:mediaStop"),   { locked = true })

    -- Shell panels
    hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("caelestia shell drawers toggle sidebar"))
    hl.bind("CTRL + ALT + C",  hl.dsp.global("caelestia:clearNotifs"), { locked = true })
    hl.bind(mainMod .. " + L", hl.dsp.global("caelestia:lock"))

    -- Screenshots (via shell)
    hl.bind("Print",                hl.dsp.global("caelestia:screenshotFreeze"))
    hl.bind(mainMod .. " + Print",  hl.dsp.exec_cmd("caelestia screenshot"))

    -- Kill/restart shell
    hl.bind("CTRL + SUPER + SHIFT + R", hl.dsp.exec_cmd("qs -c caelestia kill"), { release = true })
    hl.bind("CTRL + SUPER + ALT + R",   hl.dsp.exec_cmd("qs -c caelestia kill; sleep .1; caelestia shell -d"), { release = true })

    -- ──────────────────────────────────────
    --   BASIC (matching hypr desktop)
    -- ──────────────────────────────────────

    hl.bind(mainMod .. " + Return",       hl.dsp.exec_cmd(terminal))
    hl.bind(mainMod .. " + ALT + Return", hl.dsp.exec_cmd(terminal .. " --class floatingterm"))
    hl.bind(mainMod .. " + Escape",       hl.dsp.exec_cmd("hyprctl reload"))

    -- ──────────────────────────────────────
    --   CUSTOM APPS (matching hypr desktop)
    -- ──────────────────────────────────────

    hl.bind(mainMod .. " + CTRL + F", hl.dsp.exec_cmd("firefox"))
    hl.bind(mainMod .. " + E",        hl.dsp.exec_cmd(vars.fileExplorer))
    hl.bind(mainMod .. " + Y",        hl.dsp.exec_cmd(terminal .. " --class floatingterm yazi"))

    -- ──────────────────────────────────────
    --   HYPRLAND WINDOW MANAGEMENT
    -- ──────────────────────────────────────

    hl.bind(mainMod .. " + ALT + Q", hl.dsp.exit())
    hl.bind(mainMod .. " + W",       hl.dsp.window.close())

    hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
    hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized" }))

    hl.bind(mainMod .. " + T",         hl.dsp.window.float())
    hl.bind(mainMod .. " + SHIFT + T", hl.dsp.window.pseudo())
    hl.bind(mainMod .. " + J",         hl.dsp.layout("togglesplit"))
    hl.bind(mainMod .. " + P",         hl.dsp.window.pin())

    -- ──────────────────────────────────────
    --   FOCUS / SWAP (matching hypr desktop)
    -- ──────────────────────────────────────

    hl.bind(mainMod .. " + Left",  hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + Down",  hl.dsp.focus({ direction = "down" }))
    hl.bind(mainMod .. " + Up",    hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))

    hl.bind(mainMod .. " + SHIFT + Left",  hl.dsp.window.move({ direction = "left" }))
    hl.bind(mainMod .. " + SHIFT + Down",  hl.dsp.window.move({ direction = "down" }))
    hl.bind(mainMod .. " + SHIFT + Up",    hl.dsp.window.move({ direction = "up" }))
    hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.move({ direction = "right" }))

    hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

    hl.bind(mainMod .. " + bracketleft",  hl.dsp.focus({ workspace = "m-1" }))
    hl.bind(mainMod .. " + bracketright", hl.dsp.focus({ workspace = "m+1" }))

    hl.bind(mainMod .. " + SHIFT + bracketleft",  hl.dsp.window.move({ workspace = "m-1" }))
    hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.window.move({ workspace = "m+1" }))

    hl.bind(mainMod .. " + ALT + bracketleft",  hl.dsp.focus({ monitor = "l" }))
    hl.bind(mainMod .. " + ALT + bracketright", hl.dsp.focus({ monitor = "r" }))

    hl.bind(mainMod .. " + ALT + SHIFT + bracketleft",  hl.dsp.window.move({ monitor = "l" }))
    hl.bind(mainMod .. " + ALT + SHIFT + bracketright", hl.dsp.window.move({ monitor = "r" }))

    -- ──────────────────────────────────────
    --   WORKSPACES (matching hypr desktop)
    -- ──────────────────────────────────────

    for i = 1, 10 do
        local key = i % 10 -- 10 maps to key 0
        hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
        hl.bind(mainMod .. " + CTRL + code:" .. (i + 9),
                hl.dsp.window.move({ workspace = i, follow = false }),
                { description = "move silently to workspace " .. i })
    end

    hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
    hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
    hl.bind(mainMod .. " + period",     hl.dsp.focus({ workspace = "e+1" }))
    hl.bind(mainMod .. " + comma",      hl.dsp.focus({ workspace = "e-1" }))

    -- ──────────────────────────────────────
    --   MOVE / RESIZE (matching hypr desktop)
    -- ──────────────────────────────────────

    hl.bind(mainMod .. " + CTRL + Left",  hl.dsp.window.move({ x = -20, y = 0,   relative = true }))
    hl.bind(mainMod .. " + CTRL + Down",  hl.dsp.window.move({ x = 0,   y = 20,  relative = true }))
    hl.bind(mainMod .. " + CTRL + Up",    hl.dsp.window.move({ x = 0,   y = -20, relative = true }))
    hl.bind(mainMod .. " + CTRL + Right", hl.dsp.window.move({ x = 20,  y = 0,   relative = true }))

    hl.bind(mainMod .. " + ALT + Left",  hl.dsp.window.resize({ x = -20, y = 0,   relative = true }))
    hl.bind(mainMod .. " + ALT + Down",  hl.dsp.window.resize({ x = 0,   y = 20,  relative = true }))
    hl.bind(mainMod .. " + ALT + Up",    hl.dsp.window.resize({ x = 0,   y = -20, relative = true }))
    hl.bind(mainMod .. " + ALT + Right", hl.dsp.window.resize({ x = 20,  y = 0,   relative = true }))

    hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

    -- ──────────────────────────────────────
    --   SYSTEM (volume via wpctl, not swayosd)
    -- ──────────────────────────────────────

    hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
    hl.bind("XF86AudioMute",    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),   { locked = true })
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),      { locked = true, repeating = true })

    -- Touchpad toggle
    hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-touchpad.sh"), { locked = true })

    -- Session menu (exit fullscreen first so it renders above — shell limitation,
    -- see caelestia-dots/shell#609)
    hl.bind("ALT + Escape", hl.dsp.exec_cmd([[hyprctl dispatch 'hl.dsp.window.fullscreen_state({ internal = 0, client = 0 })' && sleep 0.1 && hyprctl dispatch 'hl.dsp.global("caelestia:session")']]))

    -- Color picker
    hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))

    -- Clipboard (via fuzzel)
    hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard"))

    -- Recording
    hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd("caelestia record -s"))
    hl.bind("CTRL + ALT + R",        hl.dsp.exec_cmd("caelestia record"))

    -- Sleep
    hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("systemctl suspend-then-hibernate"))

end)

-- Was `exec = hyprctl dispatch submap global`: enter the submap on every config load.
hl.dispatch(hl.dsp.submap("global"))
