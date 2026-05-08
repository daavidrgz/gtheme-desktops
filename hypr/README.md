<div align="center"> <h1><strong>HYPR</strong></h1> </div>

<details open>
<summary><strong>&nbsp;O V E R V I E W &nbsp;</strong></summary>

A modern **Hyprland** (Wayland) desktop based on [HyprKenso](https://github.com/aadritobasu/HyprKenso), featuring a clean, minimal aesthetic with smooth animations. Uses **waybar** as the status bar, **swaync** for notifications, **rofi** as the launcher, and **quickshell** widgets for workspace overview, screenshot tools (hypr-lens), and a music player panel. All colors are managed by gtheme patterns, mapping the 16-color ANSI palette to Material You (M3) color tokens.
</details>

#

<details open>
<summary><strong>&nbsp;I N S T A L L A T I O N &nbsp;</strong></summary>
<br>

### Arch Linux
* **Mandatory** dependencies:
	```console
	sudo pacman -S hyprland waybar rofi-wayland swaync awww kitty brightnessctl playerctl hypridle hyprlock hyprpicker wl-clipboard polkit-gnome
	```

	(You can use any other AUR helper)

	```console
	yay -S cliphist swayosd-git quickshell-git wlogout
	```

* **Optional** dependencies:
	```console
	sudo pacman -S fuzzel cava mpd thunar alacritty firefox bottom
	```

	```console
	yay -S mpd-mpris rmpc brave-bin betterdiscord-installer spicetify-cli spotify
	```
</details>

#

<details open>
<summary><strong>&nbsp;D E T A I L S &nbsp;</strong></summary>

| Attribute                | Using                  |
| -------------------------| -----------------------|
| WM                       | Hyprland               |
| Terminal                 | kitty                  |
| Shell                    | zsh                    |
| Editor                   | neovim                 |
| Notifications            | swaync                 |
| Launcher                 | rofi                   |
| Bar                      | waybar                 |
| Wallpaper                | awww                   |
| Lock Screen              | hyprlock               |
| Idle Daemon              | hypridle               |
| Logout Menu              | wlogout                |
| Widgets                  | quickshell             |
| Font                     | Google Sans Flex       |
| Default theme            | Snazzy                 |
</details>

#

<details>
<summary><strong>&nbsp;M A I N &nbsp; K E Y B I N D S &nbsp;</strong></summary>

| Keybind                                 | Action                                                    |
|-----------------------------------------|-----------------------------------------------------------|
| <kbd>super + enter</kbd>                | Spawn terminal                                            |
| <kbd>super + alt + enter</kbd>          | Spawn floating terminal                                   |
| <kbd>super + space</kbd>                | Application launcher (rofi)                               |
| <kbd>super + b</kbd>                    | Launch browser (brave)                                    |
| <kbd>super + e</kbd>                    | File manager                                              |
| <kbd>super + v</kbd>                    | Neovim in terminal                                        |
| <kbd>super + y</kbd>                    | Yazi in floating terminal                                 |
| <kbd>super + w</kbd>                    | Close window                                              |
| <kbd>super + f</kbd>                    | Toggle fullscreen                                         |
| <kbd>super + m</kbd>                    | Toggle maximize                                           |
| <kbd>super + t</kbd>                    | Toggle floating                                           |
| <kbd>super + j</kbd>                    | Toggle split                                              |
| <kbd>super + {0-9}</kbd>                | Focus workspace                                           |
| <kbd>super + shift + {0-9}</kbd>        | Move window to workspace                                  |
| <kbd>super + tab</kbd>                  | Workspace overview (quickshell)                           |
| <kbd>super + arrows</kbd>              | Focus direction                                           |
| <kbd>super + shift + arrows</kbd>      | Move window direction                                     |
| <kbd>super + [/]</kbd>                  | Previous/next workspace                                   |
| <kbd>super + a</kbd>                    | Toggle notification center                                |
| <kbd>super + l</kbd>                    | Lock screen                                               |
| <kbd>alt + escape</kbd>                 | Logout menu (wlogout)                                     |
| <kbd>print</kbd>                        | Region screenshot to clipboard                            |
| <kbd>super + print</kbd>               | Full screenshot to clipboard                              |
| <kbd>super + shift + a</kbd>           | Region image search (Google Lens)                         |
| <kbd>super + shift + x</kbd>           | Region OCR (text extraction)                              |
| <kbd>super + shift + r</kbd>           | Region screen recording                                   |
| <kbd>super + shift + c</kbd>           | Color picker                                              |
| <kbd>super + alt + c</kbd>             | Clipboard history                                         |
| <kbd>super + alt + w</kbd>             | Wallpaper picker                                          |
| <kbd>super + alt + t</kbd>             | Theme picker                                              |
| <kbd>super + alt + s</kbd>             | System launcher                                           |
| <kbd>super + alt + m</kbd>             | Toggle music panel                                        |
| <kbd>super + shift + b</kbd>           | Waybar theme picker                                       |
| <kbd>super + escape</kbd>              | Reload config                                             |
</details>

#

<details>
<summary><strong>&nbsp;G T H E M E &nbsp; P A T T E R N S &nbsp;</strong></summary>

This desktop generates color files for multiple programs through gtheme patterns:

| Pattern               | Output                                          | Description                              |
|-----------------------|-------------------------------------------------|------------------------------------------|
| `hyprland-colors`     | `~/.config/hypr/colors/colors.conf`             | Hyprland border/decoration colors        |
| `waybar-colors`       | `~/.config/waybar/colors/colors.css`            | Waybar, swaync, and wlogout CSS colors   |
| `rofi`                | `~/.config/rofi/colors.rasi`                    | Rofi launcher colors                     |
| `kitty`               | `~/.config/kitty/colors.conf`                   | Kitty terminal 16-color palette          |
| `quickshell-colors`   | `~/.config/quickshell/matugen.json`             | Quickshell widget colors (M3 JSON)       |
| `swayosd`             | `~/.config/swayosd/style.css`                   | SwayOSD volume/brightness overlay        |
| `cava`                | `~/.config/cava/config`                         | Cava audio visualizer colors             |
| `fuzzel`              | `~/.config/fuzzel/fuzzel.ini`                   | Fuzzel launcher colors                   |
| `alacritty`           | `~/.config/alacritty/alacritty.yml`             | Alacritty terminal colors                |
| `dunst`               | `~/.config/dunst/dunstrc`                       | Dunst notification colors                |
| `discord`             | BetterDiscord theme CSS                         | Discord theme colors                     |
| `firefox`             | Firefox `userChrome.css`                        | Firefox UI colors                        |
| `firefox-homepage`    | `~/.mozilla/firefox/homepage/app.css`           | Firefox custom homepage colors           |
| `spotify`             | Spicetify Sleek theme (`color.ini` + `user.css`)| Spotify colors (pattern module)          |

All colors are mapped from gtheme's 16-color ANSI palette to Material You (M3) color tokens where applicable.
</details>

#

<details>
<summary><strong>&nbsp;D E P E N D E N C Y &nbsp; L I S T &nbsp;</strong></summary>

* [hyprland](https://hyprland.org/)
* [waybar](https://github.com/Alexays/Waybar)
* [rofi-wayland](https://github.com/lbonn/rofi)
* [swaync](https://github.com/ErikReider/SwayNotificationCenter)
* [wlogout](https://github.com/ArtsyMacaw/wlogout)
* [awww](https://codeberg.org/LGFae/awww)
* [kitty](https://github.com/kovidgoyal/kitty)
* [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* [playerctl](https://github.com/altdesktop/playerctl)
* [swayosd](https://github.com/ErikReider/SwayOSD)
* [hypridle](https://github.com/hyprwm/hypridle)
* [hyprlock](https://github.com/hyprwm/hyprlock)
* [hyprpicker](https://github.com/hyprwm/hyprpicker)
* [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
* [cliphist](https://github.com/sentriz/cliphist)
* [polkit-gnome](https://gitlab.gnome.org/GNOME/polkit-gnome)
* [quickshell](https://quickshell.org/)
* [fuzzel (Optional)](https://codeberg.org/dnkl/fuzzel)
* [cava (Optional)](https://github.com/karlstav/cava)
* [mpd (Optional)](https://www.musicpd.org/)
* [mpd-mpris (Optional)](https://github.com/natsukagami/mpd-mpris)
* [rmpc (Optional)](https://github.com/mierak/rmpc)
* [thunar (Optional)](https://docs.xfce.org/xfce/thunar/start)
* [brave (Optional)](https://brave.com/)
* [alacritty (Optional)](https://github.com/alacritty/alacritty)
* [firefox (Optional)](https://www.mozilla.org/en-US/firefox/new/)
* [better-discord (Optional)](https://betterdiscord.app/)
* [spicetify (Optional)](https://spicetify.app/)
* [bottom (Optional)](https://github.com/ClementTsang/bottom)
</details>

#

<details>
<summary><strong>&nbsp;C R E D I T S &nbsp;</strong></summary>

* Desktop based on [HyprKenso](https://github.com/aadritobasu/HyprKenso) by [@aadritobasu](https://github.com/aadritobasu)
* Adapted for gtheme by [@daavidrgz](https://github.com/daavidrgz)
</details>
