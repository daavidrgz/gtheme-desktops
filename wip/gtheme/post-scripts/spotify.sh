#!/bin/bash

# Disable previous extensions
EXTENSIONS=($(spicetify config extensions))
for E in ${EXTENSIONS[@]}; do
	spicetify config extensions $E-
done

spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme Custom
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify update
spicetify update -e
