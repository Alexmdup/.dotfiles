#!/bin/bash

#Stores the output of uname to determine the operating system
UNAME=$(uname)

if [ "$UNAME" != "Linux" ]; then
	echo "Error: OS is not Linux" >> ./linuxsetup.log
	exit
else
	#Makes the .TRASH directory if it does not exist
	mkdir -p ~/.TRASH
	#Checks if .vimrc exists and renames it to .bup_vimrc if so
	if (test -f ~/.vimrc); then
		echo ".vimrc file was changed to .bup_vimrc"
		mv ~/.vimrc .bup_vimrc
	fi
	#Overwrites the contents of vimrc to .vimrc in the home directory
	cat ./etc/vimrc > ~/.vimrc
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

