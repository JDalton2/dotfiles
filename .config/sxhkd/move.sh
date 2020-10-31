#!/bin/sh

# Moves floating windows and tiled windows

case "$1" in
"left")
	bspc node -v -20 0 || bspc node -s west
	;;
"down")
	bspc node -v 0 20 || bspc node -s south
	;;
"up")
	bspc node -v 0 -20 || bspc node -s north
	;;
"right")
	bspc node -v 20 0 || bspc node -s east
	;;
*)
	echo 'Direction not requinized'
	;;
esac
