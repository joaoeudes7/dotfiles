#!/bin/bash

# Configure Keyboard
setxkbmap -model abnt2 -layout br -variant abnt2

# Configure Network
nmtui

## AUTO INSTALL

# Dependecies utils System
sudo pacman -S yay
yay -S stow
yay -S playerctl
yay -S polybar
yay -S conky
yay -S rofi
yay -S fish
yay -S xst
yay -S tmux
yay -S firefox-developer-edition
yay -S xorg-xbacklight
yay -S xorg-xinput
yay -S nitrogen
yay -S alsamixer.app

# My programs
yay -S pcmanfm
yay -S spotifyd
yay -S spotify-tui
yay -S sublime-text-dev
yay -S visual-studio-code-bin
yay -S yarn
yay -S chromium
yay -S spotify
yay -S downgrade
yay -S windscribe

# Remove unsed
yay -Rs palemoon-bin
yay -Rs firefox

# Fonts
yay -S otf-font-awesome-4
yay -S ttf-unifont

# Set default shell
chsh -s `which fish`
