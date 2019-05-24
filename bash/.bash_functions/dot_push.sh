#!/bin/bash

updot () {
	cd ~/dotfiles && git add . && git add -u && git commit -m "$1" && git push origin master && cd -
}
