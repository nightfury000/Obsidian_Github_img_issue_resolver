#!/bin/bash
################ This script moves all the .png files in directory present recursively to a specific folder ############## 
# Specify the starting directory for the search
start_dir="$1"

# Specify the target directory to move PNG files to
images_dir="images"

# Create the images directory if it doesn't exist
mkdir -p "$images_dir"

# Recursively find PNG files and move them
find "$start_dir" -type f -name "*.png" -exec mv -i {} "$images_dir" \;
