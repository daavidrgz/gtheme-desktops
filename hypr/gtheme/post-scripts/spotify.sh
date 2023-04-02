#!/bin/bash

# Disable previous extensions
EXTENSIONS=($(spicetify config extensions))
for E in ${EXTENSIONS[@]}; do
	spicetify config extensions $E-
done

spicetify config current_theme Sleek color_scheme Custom
spicetify update
spicetify update -e
