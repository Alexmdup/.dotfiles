#!/bin/bash

#removes .vimrc file in home directory
rm ~/.vimrc
sed '$d' ~/.bashrc
rm -rf ~/.TRASH

