#!/bin/sh
exec xbps-install -Syu \
-u xbps \
-Syu \
base-devel brightnessctl pipewire alsa-pipewire libjack-pipewire wireplumber alacritty dmenu picom \
neofetch feh pywal neovim libXinerama-devel libXft-devel xsetroot lm_sensors nerd-fonts-ttf \
-Syu
