#!/bin/sh

print_Volume(){
	vol=$(sndioctl -n output.level | awk {'print int ($0*100) '})
	echo "$vol%"
}

print_Battery(){
	batt=$(apm -l)
	echo "^fg(#2aa198)+^fg()$batt%"
}

print_Date(){
	date=$(date +"%a %b %d %R")
	echo "$date"
}

while true; do
	sleep 1
	echo "$(print_Volume)   $(print_Battery)   $(print_Date)"  > ~/.config/sdorfehs/bar
done
