local vars = require("variables")

-- ### Window rules ###
hl.window_rule({ match = { fullscreen = false }, opacity = tostring(vars.windowOpacity) .. " override" })

hl.window_rule({ match = { class = [[kitty|foot|equibop|org\.quickshell|imv|swappy]] }, opaque = true })
hl.window_rule({ match = { float = true, xwayland = false }, center = true })

-- Float
for _, class in ipairs({
    "yad", "zenity", "wev", [[org\.gnome\.FileRoller]], "file-roller",
    "blueman-manager", "feh", "imv", "system-config-printer", [[org\.quickshell]],
}) do
    hl.window_rule({ match = { class = class }, float = true })
end

-- Float, resize and center
hl.window_rule({ match = { class = [[org\.pulseaudio\.pavucontrol]] }, float = true })
hl.window_rule({ match = { class = [[org\.pulseaudio\.pavucontrol]] }, size = {"60%", "70%"} })
hl.window_rule({ match = { class = [[org\.pulseaudio\.pavucontrol]] }, center = true })

-- Special workspaces
hl.window_rule({ match = { class = "btop" },                                     workspace = "special:sysmon" })
hl.window_rule({ match = { class = "feishin|Spotify|Supersonic|Cider|com.github.th_ch.youtube_music" }, workspace = "special:music" })
hl.window_rule({ match = { initial_title = "Spotify( Free)?" },                   workspace = "special:music" })
hl.window_rule({ match = { class = "discord|equibop|vesktop|whatsapp" },          workspace = "special:communication" })
hl.window_rule({ match = { class = "Todoist" },                                  workspace = "special:todo" })

-- Dialogs
hl.window_rule({ match = { title = "(Select|Open)( a)? (File|Folder)(s)?" },      float = true })
hl.window_rule({ match = { title = "File (Operation|Upload)( Progress)?" },       float = true })
hl.window_rule({ match = { title = ".* Properties" },                            float = true })
hl.window_rule({ match = { title = "Save As" },                                  float = true })

-- Picture in picture
local pip = "Picture(-| )in(-| )[Pp]icture"
hl.window_rule({ match = { title = pip }, move = {"100%-w-2%", "100%-w-3%"} })
hl.window_rule({ match = { title = pip }, keep_aspect_ratio = true })
hl.window_rule({ match = { title = pip }, float = true })
hl.window_rule({ match = { title = pip }, pin = true })

-- Creative software
hl.window_rule({ match = { class = "krita|gimp|inkscape|darktable|resolve|kdenlive|shotcut|blender|godot" }, opaque = true })

-- Steam
hl.window_rule({ match = { class = "steam" },                            rounding = 10 })
hl.window_rule({ match = { title = "Friends List", class = "steam" },     float = true })
hl.window_rule({ match = { class = "steam_app_[0-9]+" },                  immediate = true })
hl.window_rule({ match = { class = "steam_app_[0-9]+" },                  idle_inhibit = "always" })

-- Floating terminal
hl.window_rule({ match = { class = "floatingterm" }, float = true })

-- ### Workspace rules ###
hl.workspace_rule({ workspace = "w[tv1]s[false]", gaps_out = vars.singleWindowGapsOut })
hl.workspace_rule({ workspace = "f[1]s[false]",   gaps_out = vars.singleWindowGapsOut })

-- ### Layer rules ###
hl.layer_rule({ match = { namespace = "hyprpicker" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "selection" },  animation = "fade" })

-- Fuzzel
hl.layer_rule({ match = { namespace = "launcher" }, animation = "popin 80%" })
hl.layer_rule({ match = { namespace = "launcher" }, blur = true })

-- Caelestia shell
hl.layer_rule({ match = { namespace = "caelestia-(border-exclusion|area-picker)" }, no_anim = true })
hl.layer_rule({ match = { namespace = "caelestia-(drawers|background)" },           animation = "fade" })
hl.layer_rule({ match = { namespace = "caelestia-drawers" },                        blur = true })
hl.layer_rule({ match = { namespace = "caelestia-drawers" },                        ignore_alpha = 0.57 })
