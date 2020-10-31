#!/bin/sh

case "$1" in
"left")
	bspc node -z left -20 0 || bspc node -z right -20 0
	;;
"down")
	bspc node -z bottom 0 20 || bspc node -z top 0 20
	;;
"up")
	bspc node -z top 0 -20 || bspc node -z bottom 0 -20
	;;
"right")
	bspc node -z right 20 0 || bspc node -z left 20 0
	;;
"LEFT")
	bspc node -z right -20 0 || bspc node -z left -20 0
	;;
"DOWN")
	bspc node -z top 0 20 || bspc node -z bottom 0 20
	;;
"UP")
	bspc node -z bottom 0 -20 || bspc node -z top 0 -20
	;;
"RIGHT")
	bspc node -z left 20 0 || bspc node -z right 20 0
	;;
*)
	echo 'Direction not requinized'
	;;
esac
