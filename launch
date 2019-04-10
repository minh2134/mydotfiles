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

#i3
if [ ! -d "$TAR/i3" ]; then
	mkdir $TAR/i3
fi
ln -sf $SOURCE/i3/config $TAR/i3/config

#mpd
if [ ! -d "$TAR/mpd/playlists" ]; then
	mkdir $TAR/mpd/playlists
fi #creating playlists folder
touch $TAR/mpd/database
ln -sf $SOURCE/mpd/mpd.conf $TAR/mpd/mpd.conf

