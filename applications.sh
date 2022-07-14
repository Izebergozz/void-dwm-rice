#!/bin/sh
exec xbps-install -Syu
exec xbps-install -u xbps
exec xbps-install -Syu
exec xbps-install gimp alacritty dmenu picom neofetch feh pywal vim 
