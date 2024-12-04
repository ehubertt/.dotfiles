#####FROM HOMEWORK 01
# My Dotfiles
These are my dotfile configuration files for different software in Bash.
This repository contains custom configuration files and scripts to set up a personalized shell environment.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.


######FROM HOMEWORK 02
## Files and Scripts

-**./bin/linux.sh**:
  - Sets up the environment for Linux.
  - Backs up existing `.nanorc` as `.bup_nanorc`.
  - Creates a `.TRASH` directory in the home folder.
  - Copies the custom `nanorc` file to the home directory.
  - Adds a source command for `bashrc_custom` in `.bashrc`.

- **./bin/cleanup.sh**:
  - Reverts the changes made by `linux.sh`.
  - Deletes the `.nanorc` file in the home directory.
  - Removes the `source` line from `.bashrc`.
  - Deletes the `.TRASH` directory.

- **Makefile**:
  - Automates the execution of the setup and cleanup scripts.
  - The `linux` target runs `linux.sh` and depends on the `clean` target.
  - The `clean` target runs `cleanup.sh`.

- **./etc/bashrc_custom**:
  - Contains environment variables, aliases, and functions to customize the shell.

- **./etc/nanorc**:
  - Customizes the behavior of the nano text editor.

## Usage

1. Run the setup script:
   ```bash
   make linux

