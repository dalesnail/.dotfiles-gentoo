#!/bin/sh

memory=$(free -m | awk '/Mem:/ {print $3"M / "$2"M"}')
distro=$(cat /etc/os-release | sed -e '1!d' -e 's/NAME=//g')
username=$(whoami)
shell=$(echo "$SHELL" | sed -e 's/\/bin\///g')
cpu=$(cat /proc/cpuinfo | grep -e 'model name' | sed -e '1!d' -e 's/model name//g' -e 's/(R).Core(TM)//g' -e 's/CPU//g' -e 's/  @//g' -e 's/://g' -e 's/^[ \t]*//')

clear

echo " "
echo "     .----.   @   @  $username"
echo "    / .-\"-.\`.  \\v/   $distro"
echo "    | | '\ \ \_/ )   $shell"
echo "  ,-\ \`-.' /.'  /    $cpu"
echo " '---\`----'----'     $memory"
echo " "
