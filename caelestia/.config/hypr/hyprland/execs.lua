local vars = require("variables")

hl.on("hyprland.start", function()
    -- Start caelestia shell first (heaviest process - begins loading immediately)
    hl.exec_cmd("caelestia shell -d")

    -- Auth
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- Clipboard history
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Cursors
    hl.exec_cmd("hyprctl setcursor " .. vars.cursorTheme .. " " .. vars.cursorSize)

    -- Forward bluetooth media commands to MPRIS
    hl.exec_cmd("mpris-proxy")

    -- Idle daemon
    hl.exec_cmd("hypridle")
end)

-- Was `exec = ...` (re-run on every config reload, not just at startup).
-- Dark mode for GTK apps (portal backend required: xdg-desktop-portal-gtk)
hl.exec_cmd([[gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"]])
hl.exec_cmd([[gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"]])
