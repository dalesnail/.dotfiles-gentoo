#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -load "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

## start some nice programs

if [ -n "`/etc/X11/chooser.sh`" ]; then
 command="`/etc/X11/chooser.sh`"
else
 failsafe="yes"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

############################################
#if [ -n "$failsafe" ]; then
 #twm &
 #xclock -geometry 50x50-1+1 &
 #xterm -geometry 80x50+494+51 &
 #xterm -geometry 80x20+494-0 &
 #exec xterm -geometry 80x66+0+0 -name login
#else
 #exec $command
#fi
#############################################

# Screen Calibration
xcalib ~/.Xcalib/Lenovo_ThinkPad_X1_1366x768_glare_LP133WH2-TLM5.icc

# slstatus
while true; do
	slstatus
done &

# Mouse Tapping
synclient TapButton1=1

# Background
~/.fehbg &

# Keybinds
xbindkeys

# KeyMapping
[[ -f ~./Xmodmap ]] && xmodmap ~/.Xmodmap

# DWM
dwm
