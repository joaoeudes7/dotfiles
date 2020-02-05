#!/bin/bash

# Utils
backup() {
    rsync -rtvu --delete -zz --progress "$1" "$2"
}

folderConfig() {
    echo "$HOME/.config/$1"
}

genFolder() {
    mkdir -p $1
    echo $1
}

configStow() {
    folder=$(genFolder "$1/.config")
    echo $folder
    echo $folder
}

# Copy user config #
####################
echo '# Init Backup'

backup $(folderConfig 'nvim') $(configStow 'nvim')
backup $(folderConfig 'fish') $(configStow 'fish')
backup $(folderConfig 'polybar') $(configStow 'polybar')
backup ~/.gitconfig git
backup ~/.yarnrc yarn
