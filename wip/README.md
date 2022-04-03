<div align="center"> <h1><strong>WIP</strong></h1> </div>

<details open>
<summary><strong>&nbsp;O V E R V I E W &nbsp;👁️‍🗨️</strong></summary>

A **simple and minimalistic** desktop with rounded corners and subtle transparency. It's **fast and efficient**, letting you
enjoy a beautiful experience while being productive at your work (or whatever you do with your time) :)
</details>

# 

<details open>
<summary><strong>&nbsp;S C R E E N S H O T S &nbsp;📸</strong></summary>

* **Tomorrow-Night-Blue Theme**

	![Tomorrow-Night-Blue](screenshots/tomorrow1.png)
	![](screenshots/tomorrow2.png)

* **Future Theme**

	![Future](screenshots/future.png)

* **Nu-Disco Theme**

	![Nu-Disco](screenshots/nu-disco.png)
</details>

#

<details open>
<summary><strong>&nbsp;I N S T A L L A T I O N &nbsp;🛠</strong></summary>


*	### Arch Linux

	* **Mandatory** dependencies:
		```console
		sudo pacman -S bspwm sxhkd rofi dunst pulseaudio feh brightnessctl playerctl tint2 flameshot
		```
		(You can use any other AUR helper)
		```console
		yay -S xob picom-ibhagwan-git
		```
		```console
		pip3 install pulsectl
		```

	* **Optional** dependencies:
		```console
		sudo pacman -S alacritty firefox neofetch bottom kitty
		```
		```console
		yay -S betterdiscord-installer spicetify-cli
		```

		**Note:** Some of these optional programs may need some configuration in order to work properly with provided patterns.

*	### Ubuntu

	* **Mandatory** dependencies:
		```console
		sudo apt install bspwm sxhkd rofi dunst pulseaudio feh brightnessctl playerctl tint2 flameshot
		```
		```console
		pip3 install pulsectl
		```
		* **Brightnessctl**

			Even though this dependency can be installed normally with apt, the brightness can't be changed without root privileges.  
			To be able to tweak the brightness normally you need to execute the following command:
			```console
			sudo usermod -aG video ${USER}
			```
			and after rebooting you will be able to change your screen brightness.

		* **Picom**
			```console
			sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson
			```
			```console
			git clone git@github.com:ibhagwan/picom.git picom
			cd picom
			meson --buildtype=release . build
			sudo ninja -C build install
			``` 

			For more info see: https://github.com/yshui/picom

		* **XOB**

			The following dependencies are needed:
			```console
			sudo apt install libx11-dev libxrender-dev
			```
			Clone [this repository](https://github.com/florentc/xob#installation):
			```console
			git clone git@github.com:florentc/xob.git
			```
			and follow the instructions for installing.


	* **Optional** dependencies:
		```console
		sudo apt-get install bottom alacritty neofetch
		```

		* ### Better-discord
			Refer to [this repo](https://gist.github.com/ObserverOfTime/d7e60eb9aa7fe837545c8cb77cf31172#install-betterdiscordctl).  
			Untested.

		* ### Spicetify
			Refer to [this guide](https://spicetify.app/docs/getting-started/simple-installation).  
			Untested.
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
| Bar                      | tint2                  |
| Volume/Brightness        | xob                    |
| Font                     | Caskaydia Cove         |
| Default theme            | Tomorrow-Night-Blue    |
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
| <kbd>alt + esc</kbd>                    | Launch powermenu                                          |
</details>

#

<details>
<summary><strong>&nbsp;D E P E N D E N C Y  &nbsp;L I S T &nbsp;🔗</strong></summary>

* [pulsectl (pip)](https://pypi.org/project/pulsectl/)
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
* [xob](https://github.com/florentc/xob)
* [tint2](https://gitlab.com/o9000/tint2)
* [flameshot](https://github.com/flameshot-org/flameshot)
* [firefox (Optional)](https://www.mozilla.org/en-US/firefox/new/)
* [alacritty (Optional)](https://github.com/alacritty/alacritty)
* [better-discord (Optional)](https://betterdiscord.app/)
* [spicetify (Optional)](https://spicetify.app/)
* [neofetch (Optional)](https://github.com/dylanaraps/neofetch)
* [bottom (Optional)](https://github.com/ClementTsang/bottom)
</details>

#

<details>
<summary><strong>&nbsp;C R E D I T S &nbsp;👥</strong></summary>

* Desktop ported by [@daavidrgz](https://github.com/daavidrgz) and [@LucaDangeloS](https://github.com/LucaDangeloS)
* Original author [@joni22u](https://github.com/joni22u/)
</details>
