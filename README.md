# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .cimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash. Contains all custom aliases and necessary functions.
## linux.sh
Overwrites .vimrc file with configurations found in the vimrc file in the etc directory. Also creates the .TRASH directory to add functionality to the trash alias command.
## cleanup.sh
Removes the .vimrc file and .TRASH directory from the home directory, effectively reversing the changes made by running linux.sh.
