# Set default cursor for wm
xsetroot -cursor_name left_ptr

# Launch programs not tobe reloaded with bspwm
sxhkd &
unclutter &
#picom &

# Launch window manager
exec bspwm
