#!/bin/sh
# init script for the X windows system

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
	[ -x "$f" ] && . "$f"
    done
    unset f
fi

# starts notification daemon
exec dunst &

# hides mouse pointer when not in use
exec xbanish &

# starts xbindkeys
exec xbindkeys &

# sets background
exec xsetroot -solid gray55 &
#exec feh --bg-scale ~/Pictures/wallpaper/MountainInroad.jpg &

# remaps caps-lock to escape
exec xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' &

# starts dwm status bar and dwm
exec ~/scripts/dwm_status.sh &
exec dwm
