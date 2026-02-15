#!/bin/bash

# Directory containing images
IMAGE_DIR="$HOME/Pictures/walls-2"

# Loop through all image files (jpg, jpeg, png)
for img in "$IMAGE_DIR"/*.{jpg,jpeg,png}; do
    # Skip if no files match
    [ -e "$img" ] || continue


    # Run swwww on the image
    ~/.config/hypr/wppicker.sh "$img"

done

echo "All images processed with swwww!"
