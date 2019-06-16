#!/bin/sh

# This script sets the statusbar with the xsetroot command at the end. Have it
# started by ~/.xinitrc or ~/.xprofile.

# Handle SIGTRAP signals sent by refbar to update the status bar immediately.
trap 'update' 5

# Set the deliminter character.
delim="  "


status() { \

	currenttime=$(date +%H:%M)
	if [[ "$currenttime" > "17:59" ]] || [[ "$currenttime" < "07:59" ]]; then
                echo "         " && feh --bg-scale ~/Pictures/Night.jpg
	else
		echo "         " && feh --bg-scale ~/Pictures/Day.jpg
	fi	
	
	#Date and time.
	date '+%I:%M                                                                                                                                                                                     '

	grep "^\s*w" /proc/net/wireless | awk '{ print "  " }'
	
	## Will show all batteries with approximate icon for remaining power.
	for x in /sys/class/power_supply/BAT?/capacity;
	do
	case "$(cat $x)" in
		100|9[0-9])	echo " " ;;
		8[0-9]|7[0-9])	echo " " ;;
		6[0-9]|5[0-9])	echo " " ;;
		4[0-9]|3[0-9])	echo " " ;;
		*)		echo " " ;;
	esac
done 

        #Charging State
	cstate=$(cat /sys/class/power_supply/BAT0/status)
	if [[ "$cstate" == "Charging" ]]; then
		echo " "
	else
		:
	fi



	}

update() { \
	# So all that big status function was just a command that quicking gets
	# what we want to be the statusbar. This xsetroot command is what sets
	# it. Note that the tr command replaces newlines with spaces. This is
	# to prevent some weird issues that cause significant slowing of
	# everything in dwm. Note entirely sure of the cause, but again, the tr
	# command easily avoids it.
	xsetroot -name "$(status | tr '\n' ' ')" &
    wait

        #nightandday &
    wait
    }


while :; do
    update
	# Sleep for a minute after changing the status bar before updating it
	# again. We run sleep in the background and use wait until it finishes,
    # because traps can interrupt wait immediately, but they can't do that
    # with sleep.
	sleep 1m &
    wait
done
