# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.


# ALIASES
alias xstr="xrdb ~/.Xresources && killall -USR1 xst"
alias .brc=". ~/.bashrc"
alias dwmc="nvim ~/.dwm/config.h"
alias dwmcomp=" cd ~/.dwm && sudo make clean install && cd - "
alias brc="nvim ~/.bashrc"
alias sdown="sudo shutdown -P now"
alias runescape="java -jar ~/Games/RuneLite.jar"
alias FULLUPDATE="sudp emerge --sync && sudo --update --deep --with-bdeps y @world --ask && emerge --depclean --ask"

# LITTLE BITS
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PS1="\[\033[1;35m\]\u \[\033[m\][\[\033[1;32m\]\w\[\033[m\]] "

if [ -d ~/.bash_functions ]; then
	for file in ~/.bash_functions/*; do
		. "$file"
	done
fi
