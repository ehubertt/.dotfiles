#!/bin/bash

# Redirect all output to linuxsetup.log
LOG_FILE=~/linuxsetup.log
exec > $LOG_FILE 2>&1

# Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script is for Linux systems only."
    exit 1
fi

# Creating the .TRASH directory 
mkdir -p ~/.TRASH

# Backup the existing .nanorc file if it exists
if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "The existing .nanorc file was changed to .bup_nanorc"
fi

# Overwrite the .nanorc file with the contents of ./etc/nanorc
cp ~/.dotfiles/etc/nanorc ~/.nanorc

# Add a source line for bashrc_custom in .bashrc
if ! grep -Fxq "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
    echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

echo "Linux setup complete."

