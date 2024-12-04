#!/bin/bash

# Remove the .nanorc file in the home directory
rm -r ~/.nanorc

# Remove the "source" line from .bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory
rm -rf ~/.TRASH

echo "Cleanup complete."

