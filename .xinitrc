#!/bin/sh

setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle" 

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

wal -R
feh --bg-scale ~/.cache/wallpapers/snow.jpg
/home/izebergozz/.local/src/dwm/dwmscripts/dwmbar &

exec dwm
