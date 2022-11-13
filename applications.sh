#!/bin/sh
exec xbps-install -Syu \
-u xbps \
-Syu \
base-devel pipewire alsa-pipewire libjack-pipewire wireplumber gimp alacritty dmenu picom neofetch feh pywal neovim libXinerama-devel libXft-devel
