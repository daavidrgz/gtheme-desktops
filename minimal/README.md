<div align="center"> <h1><strong>MINIMAL</strong></h1> </div>

<details open>
<summary><strong>&nbsp;O V E R V I E W &nbsp;👁️‍🗨️</strong></summary>

A minimal dependency desktop using bspwm and polybar. It has square corners and **double borders** in windows. 
</details>

# 

<details open>
<summary><strong>&nbsp;S C R E E N S H O T S &nbsp;📸</strong></summary>

* **Mountain Theme**

	![Mountain](screenshots/mountain.png)

* **Nord Theme**

	![Nord](screenshots/nord.png)

* **Catppuccin Theme**

	![Catppuccin](screenshots/catppuccin.png)
</details>

<details open>
<summary><strong>&nbsp;I N S T A L L A T I O N &nbsp;🛠</strong></summary>

#

### Arch Linux

* **Mandatory** dependencies:
	```console
	sudo pacman -S bspwm sxhkd rofi dunst pulseaudio feh brightnessctl playerctl flameshot
	```

	(You can use any other AUR helper)
	
	```console
	yay -S polybar
	```
	(Tool to have double borders in bspwm)

	```console
	git clone https://github.com/wmutils/opt opt
	cd opt
	sudo make install
	```

* **Optional** dependencies:
	```console
	sudo pacman -S alacritty firefox kitty
	```

	```console
	yay -S betterdiscord-installer spicetify-cli
	```

	**Note:** Some of these optional programs may need some configuration in order to work properly with provided patterns.


### Ubuntu
</details>

#

<details>
<summary><strong>&nbsp;D E T A I L S &nbsp;📝</strong></summary>

| Attribute                | Using                  |
| -------------------------| -----------------------|
| WM                       | bspwm                  |
| Terminal                 | alacritty              |
| Shell                    | zsh                    |
| Editor                   | vscode                 |
| Compositor               | picom                  |
| Notifications            | dunst                  |
| Launcher                 | rofi                   |
| Bar                      | polybar                |
| Font                     | Iosevka                |
| Default theme            | Mountain               |
</details>

#

<details>
<summary><strong>&nbsp;M A I N &nbsp; K E Y B I N D S &nbsp;#️⃣</strong></summary>

| Keybind                                 | Action                                                    |
|-----------------------------------------|-----------------------------------------------------------|
| <kbd>super + enter</kbd>                | Spawn terminal                                            |
| <kbd>super + ctrl + f</kbd>             | Spawn web browser                                         |
| <kbd>super + d</kbd>                    | Launch applications launcher                              |
| <kbd>super + w</kbd>                    | Close window                                              |
| <kbd>super + {0-9}</kbd>                | Change workspace                                          |
| <kbd>super + ]</kbd>                    | Change to next workspace                                  |
| <kbd>super + [</kbd>                    | Change to previous workspace                              |
| <kbd>super + shift + {0-9}</kbd>        | Move focused window to workspace                          |
| <kbd>super + s</kbd>                    | Set floating layout                                       |
| <kbd>super + t</kbd>                    | Set tiling layout                                         |
</details>

#

<details>
<summary><strong>&nbsp;D E P E N D E N C Y &nbsp;L I S T &nbsp;🔗</strong></summary>

* [opt (double borders)](https://github.com/wmutils/opt)
* [bspwm](https://github.com/baskerville/bspwm)
* [sxhkd](https://github.com/baskerville/sxhkd)
* [picom (ibhagwan fork)](https://github.com/ibhagwan/picom)
* [rofi](https://github.com/davatorium/rofi)
* [dunst](https://github.com/dunst-project/dunst)
* [pulseaudio](https://wiki.archlinux.org/title/PulseAudio)
* [pamixer](https://github.com/cdemoulins/pamixer)
* [feh](https://github.com/derf/feh)
* [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* [playerctl](https://github.com/altdesktop/playerctl)
* [polybar](https://github.com/polybar/polybar)
* [flameshot](https://github.com/flameshot-org/flameshot)
* [alacritty (Optional)](https://github.com/alacritty/alacritty)
* [firefox (Optional)](https://www.mozilla.org/en-US/firefox/new/)
* [better-discord (Optional)](https://betterdiscord.app/)
* [spicetify (Optional)](https://spicetify.app/)
</details>

#

<details>
<summary><strong>&nbsp;C R E D I T S &nbsp;👥</strong></summary>

* Desktop ported by [@daavidrgz](https://github.com/daavidrgz)
* Original author [@mdnght-4](https://github.com/mdnght-4)
</details>
