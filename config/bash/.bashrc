#
# ~/.bashrc
#

# If not running interactively, don't do anything
LOL=false
_lol() {
	exec 1> >(lolcat -t);
	LOL=true
}

_unlol() {
	exec 1> /dev/stdout;
	LOL=false
}

lolswitch() {
	if [[ $LOL ]]; then
		_unlol
	else
		_lol
	fi
}
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
alias fuck='sudo $(history -p !!)'
alias sudo='sudo '
alias optimus-switch='optimus-manager --switch auto'
alias project="cd $HOME/project/Don-t-See"

PS1='\u@\h \W '
PATH="$PATH:$HOME/bin"


#temporary workaround for steam-native 
export LD_PRELOAD="/usr/lib/libgio-2.0.so.0 /usr/lib/libglib-2.0.so.0"

#Powerline stuff
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
alias nuke='sudo killall -9 $1'
