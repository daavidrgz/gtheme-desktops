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

## Arch Linux
* ### **Mandatory** dependencies:
	```console
	sudo pacman -S bspwm sxhkd rofi dunst pulseaudio pamixer feh brightnessctl playerctl tint2 flameshot
	```
	(You can use any other AUR helper)
	
	```console
	yay -S xob picom-ibhagwan-git
	```

	```console
	sudo pip3 install pulsectl
	```

* ### **Optional** dependencies:
	```console
	sudo pacman -S alacritty firefox neofetch bottom kitty
	```

	```console
	yay -S betterdiscord-installer spicetify-cli
	```

	**Note:** Some of these optional programs may need some configuration in order to work properly with provided patterns.

## <br>Ubuntu</br>
* ### **Mandatory** dependencies:
	#### Paste friendly command to install most of the needed dependencies:
	```
	sudo apt install bspwm sxhkd rofi dunst pulseaudio feh brightnessctl playerctl tint2 flameshot
	```

	* ### **Brightnessctl**
		Even though this dependency can be installed normally with apt, the brightness can't be changed without root privileges.  
		To be able to tweak the brightness normally you need to execute the following command:
		```
		sudo usermod -aG video ${USER}
		```
		and after rebooting you will be able to change your screen brightness.


	* ### **Pamixer**
		Clone the pamixer repository:
		```console
		git clone https://github.com/cdemoulins/pamixer.git
		```
	
		Then run:
		```console
		sudo apt install libpulse
		```

		**Note:** It's assumed you already have pulseaudio installed from the above sections.
	
		A simple installation guide can be found at the [repo main page](https://github.com/cdemoulins/pamixer).
		
		<span style="font-size: 120%">**If you have issues building pamixer, read the following guide:**</span>
		
		
		For the cxxopts dependency, you will need to clone [this repository](https://github.com/jarro2783/cxxopts):
		```console
		git clone git@github.com:jarro2783/cxxopts.git
		```
		Then execute:
		```console
		cd ./cxxopts
		sudo cp include/cxxopts.hpp /usr/include
		sudo cp include/cxxopts.hpp /usr/local/include
		```

		Even then, cxxopts may not be detected properly by meson. So we need to remove it as a dependency in the 
		project settings.  
		
		Go back to the directory where pamixer was cloned and edit the ``meson.build`` file:
		remove the following line:
		```console
		cxxopts = dependency('cxxopts')
		```
		And edit this line:
		```console
		dependencies : [pulse, cxxopts])
		```
		So it is now:
		```console
		dependencies : [pulse])
		```

		This allows us to continue with the build process without interruptions.

		Finally, run:
		```console
		meson setup build
		meson compile build
		sudo meson install -C build
		```


	* ### **Picom**
		Clone [this fork](https://github.com/ibhagwan/picom):
		```console
		git clone git@github.com:ibhagwan/picom.git
		```
		and refer to the [original picom repository](https://github.com/yshui/picom#dependencies) for a detailed installation guide and dependencies.

		Briefly, install these dependencies:
		```console
		sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson
		```

		Then cd into the picom directory and run:
		```console
		meson --buildtype=release . build
		sudo ninja -C build install
		``` 


    * ### **XOB**
		The following dependencies are needed:
		```console
		sudo apt install libx11-dev libxrender-dev
		```
		then clone [this repository](https://github.com/florentc/xob):
		```console
		git clone git@github.com:florentc/xob.git
		```
		and follow the instructions for installing.


* ### **Optional** dependencies:
	#### Paste friendly command to install most of the dependencies:
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

* Desktop ported by [@daavidrgz](https://github.com/daavidrgz)
* Original author [@joni22u](https://github.com/joni22u/)
</details>
