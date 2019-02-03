#!/bin/bash

# Configure Network
nmtui

## AUTO INSTALL

# Dependecies
sudo pacman -S yay
yay -S stow
yay -S playerctl
yay -S polybar
yay -S conky
yay -S rofi
yay -S fish
yay -S xst

# My programs
yay -S thunar
yay -S sublime-text-dev
yay -S visual-studio-code-bin
yay -S yarn
yay -S chromium
yay -S spotify

# Remove unsed
yay -Rs palemoon-bin

# Fonts
yay -S otf-font-awesome-4
yay -S ttf-unifont

# Recovery of configs
stow i3
stow polybar
stow fish
stow rofi
stow vscode
stow yarn

# Set default shell
chsh -s `which fish`