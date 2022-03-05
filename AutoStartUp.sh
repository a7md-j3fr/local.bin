#!/bin/sh

run() {
	pgrep "$1" || $@ &
}


 
run slock 
run telegram-desktop 
run alacritty -e  journalctl -fu tg-usbt.service 
run google-chrome-stable 
run picom 
run wal -R 
run fdm --hidden  
run xrandr -s 1360x768 


