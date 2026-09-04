-- Hyprland config (Lua). Migrated from hyprland.conf (hyprlang) for Hyprland >= 0.55.
-- hyprlang is deprecated since 0.55 and will be dropped; see https://hypr.land/news/26_lua/
--
-- hyprland.conf and hyprland/*.conf are kept as a rollback: Hyprland only looks for
-- hyprland.lua at STARTUP, and it wins when present.
-- To roll back: mv hyprland.lua hyprland.lua.off  (then restart the session).

-- Default monitor
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1.5 })

-- Modular configs. Each require() is its own Lua scope, so an error in one file
-- does not stop the others from loading.
require("hyprland.env")
require("hyprland.general")
require("hyprland.input")
require("hyprland.misc")
require("hyprland.animations")
require("hyprland.decoration")
require("hyprland.group")
require("hyprland.execs")
require("hyprland.rules")
require("hyprland.gestures")
require("hyprland.keybinds")

-- User config (create manually if needed: ~/.config/caelestia/hypr-user.lua)
local ok, err = pcall(dofile, os.getenv("HOME") .. "/.config/caelestia/hypr-user.lua")
if not ok and not tostring(err):match("No such file") then
    print("hypr-user.lua: " .. tostring(err))
end
