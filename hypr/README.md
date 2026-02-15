<div align="center"> <h1><strong>HYPR</strong></h1> </div>

<details open>
<summary><strong>&nbsp;O V E R V I E W &nbsp;👁️‍🗨️</strong></summary>

A modern **Hyprland** (Wayland) desktop based on [HyprKenso](https://github.com/aadritobasu/HyprKenso), featuring a clean, minimal aesthetic with smooth animations. Uses **waybar** as the status bar, **swaync** for notifications, **rofi** as the launcher, and **quickshell** widgets for workspace overview, screenshot tools, and a music player panel. All colors are managed by gtheme patterns, replacing the original matugen Material You system.
</details>

#

<details open>
<summary><strong>&nbsp;I N S T A L L A T I O N &nbsp;🛠</strong></summary>
<br>

### Arch Linux
* **Mandatory** dependencies:
	```console
	sudo pacman -S hyprland waybar rofi-wayland swaync wlogout swww kitty brightnessctl playerctl hypridle hyprlock hyprpicker wl-clipboard polkit-gnome
	```

	(You can use any other AUR helper)

	```console
	yay -S cliphist swayosd-git quickshell-git
	```

* **Optional** dependencies:
	```console
	sudo pacman -S fuzzel cava mpd mpv thunar alacritty firefox neofetch bottom
	```

	```console
	yay -S mpd-mpris rmpc brave-bin betterdiscord-installer spicetify-cli spotify
	```
</details>

#

<details open>
<summary><strong>&nbsp;D E T A I L S &nbsp;📝</strong></summary>

| Attribute                | Using                  |
| -------------------------| -----------------------|
| WM                       | Hyprland               |
| Terminal                 | kitty                  |
| Shell                    | zsh                    |
| Editor                   | neovim                 |
| Notifications            | swaync                 |
| Launcher                 | rofi                   |
| Bar                      | waybar                 |
| Wallpaper                | swww                   |
| Lock Screen              | hyprlock               |
| Idle Daemon              | hypridle               |
| Logout Menu              | wlogout                |
| Widgets                  | quickshell             |
| Font                     | Google Sans Flex       |
| Default theme            | Snazzy                 |
</details>

#

<details>
<summary><strong>&nbsp;M A I N &nbsp; K E Y B I N D S &nbsp;#️⃣</strong></summary>

| Keybind                                 | Action                                                    |
|-----------------------------------------|-----------------------------------------------------------|
| <kbd>super + enter</kbd>                | Spawn terminal                                            |
| <kbd>super + r</kbd>                    | Launch applications launcher                              |
| <kbd>super + b</kbd>                    | Launch browser                                            |
| <kbd>super + q</kbd>                    | Close window                                              |
| <kbd>super + {0-9}</kbd>                | Change workspace                                          |
| <kbd>super + shift + {0-9}</kbd>        | Move focused window to workspace                          |
| <kbd>super + space</kbd>                | Toggle floating                                           |
| <kbd>super + f</kbd>                    | Toggle fullscreen                                         |
| <kbd>super + tab</kbd>                  | Workspace overview                                        |
| <kbd>super + a</kbd>                    | Toggle notification center                                |
| <kbd>super + alt + p</kbd>              | Logout menu (wlogout)                                     |
| <kbd>super + alt + w</kbd>              | Wallpaper picker                                          |
| <kbd>super + alt + t</kbd>              | Theme picker                                              |
| <kbd>super + alt + s</kbd>              | System launcher                                           |
| <kbd>super + shift + s</kbd>            | Region screenshot                                         |
| <kbd>super + shift + c</kbd>            | Color picker                                              |
| <kbd>super + alt + c</kbd>              | Clipboard history                                         |
</details>

#

<details>
<summary><strong>&nbsp;G T H E M E &nbsp; P A T T E R N S &nbsp;🎨</strong></summary>

This desktop generates color files for multiple programs through gtheme patterns:

| Pattern               | Output                                | Description                              |
|-----------------------|---------------------------------------|------------------------------------------|
| `hyprland-colors`     | `~/.config/hypr/colors/colors.conf`   | Hyprland border/decoration colors        |
| `waybar-colors`       | `~/.config/waybar/colors/colors.css`  | Waybar, swaync, and wlogout CSS colors   |
| `rofi`                | `~/.config/rofi/colors.rasi`          | Rofi launcher colors                     |
| `kitty`               | `~/.config/kitty/colors.conf`         | Kitty terminal 16-color palette          |
| `quickshell-colors`   | `~/.config/quickshell/matugen.json`   | Quickshell widget colors (M3 JSON)       |
| `cava`                | `~/.config/cava/config`               | Cava audio visualizer colors             |
| `fuzzel`              | `~/.config/fuzzel/fuzzel.ini`         | Fuzzel launcher colors                   |
| `alacritty`           | `~/.config/alacritty/alacritty.yml`   | Alacritty terminal colors                |
| `dunst`               | `~/.config/dunst/dunstrc`             | Dunst notification colors                |
| `discord`             | BetterDiscord theme CSS               | Discord theme colors                     |
| `firefox`             | Firefox userChrome.css                | Firefox UI colors                        |
| `spotify`             | Spicetify theme                       | Spotify colors                           |

All colors are mapped from gtheme's 16-color ANSI palette to Material You (M3) color tokens where applicable.
</details>

#

<details>
<summary><strong>&nbsp;D E P E N D E N C Y &nbsp;L I S T &nbsp;🔗</strong></summary>

* [hyprland](https://hyprland.org/)
* [waybar](https://github.com/Alexays/Waybar)
* [rofi-wayland](https://github.com/lbonn/rofi)
* [swaync](https://github.com/ErikReider/SwayNotificationCenter)
* [wlogout](https://github.com/ArtsyMacaw/wlogout)
* [swww](https://github.com/LGFae/swww)
* [kitty](https://github.com/kovidgoyal/kitty)
* [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* [playerctl](https://github.com/altdesktop/playerctl)
* [swayosd](https://github.com/ErikReider/SwayOSD)
* [hypridle](https://github.com/hyprwm/hypridle)
* [hyprlock](https://github.com/hyprwm/hyprlock)
* [hyprpicker](https://github.com/hyprwm/hyprpicker)
* [quickshell](https://quickshell.org/)
* [fuzzel (Optional)](https://codeberg.org/dnkl/fuzzel)
* [cava (Optional)](https://github.com/karlstav/cava)
* [alacritty (Optional)](https://github.com/alacritty/alacritty)
* [firefox (Optional)](https://www.mozilla.org/en-US/firefox/new/)
* [better-discord (Optional)](https://betterdiscord.app/)
* [spicetify (Optional)](https://spicetify.app/)
* [bottom (Optional)](https://github.com/ClementTsang/bottom)
* [neofetch (Optional)](https://github.com/dylanaraps/neofetch)
</details>

#

<details>
<summary><strong>&nbsp;C R E D I T S &nbsp;👥</strong></summary>

* Desktop based on [HyprKenso](https://github.com/aadritobasu/HyprKenso) by [@aadritobasu](https://github.com/aadritobasu)
* Adapted for gtheme by [@daavidrgz](https://github.com/daavidrgz)
</details>
