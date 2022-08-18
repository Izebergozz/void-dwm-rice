#!/bin/sh
exec xbps-install -Syu \
-u xbps \
-Syu \
base-devel pipewire alsa-pipewire libjack-pipewire gimp alacritty dmenu picom neofetch feh pywal vim libXinerama-devel libXft-devel
