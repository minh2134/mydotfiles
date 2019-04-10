#!/bin/bash
#This script creates symlink using the config files in the repo as a base.
#Any error with mkdir can be safely disregarded

#some interesting variables

SOURCE="$HOME/mydotfiles/config"
TAR="$HOME/.config"

#alacritty
if [ ! -d "$TAR/alacritty" ]; then
	mkdir $TAR/alacritty
fi
ln -sf $SOURCE/alacritty/alacritty.yml $TAR/alacritty/alacritty.yml

#compton
if [ ! -d "$TAR/compton" ]; then
	mkdir $TAR/compton
fi
ln -sf $SOURCE/compton/compton.conf $TAR/compton/compton.conf
