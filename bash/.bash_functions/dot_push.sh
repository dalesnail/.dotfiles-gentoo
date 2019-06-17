#!/bin/bash

#Update dots with commit descriptions
updot () {
	cd ~/nest && git add . && git add -u && git commit -m "$1" && git push origin master && cd -
} 
