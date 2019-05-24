#!bin/bash

wifi () {
	sudo nmcli dev wifi connect $1 password $2
}
