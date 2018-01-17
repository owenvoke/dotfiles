#!/usr/bin/env bash
DOTFILES=$HOME/.dotfiles

echo " ----------------------"
echo " Installing dotfiles"
echo " ----------------------"

# --------------------------------------------
# Install required dependencies
# --------------------------------------------

sudo apt update
sudo apt install git

# --------------------------------------------
# Clone dotfiles repository
# --------------------------------------------

if [ -d $HOME/.dotfiles ]; then
    git -C $DOTFILES pull
else
    git clone https://github.com/pxgamer/dotfiles.git $DOTFILES
fi

# --------------------------------------------
# Install additional binaries
# --------------------------------------------

source $DOTFILES/linux/apt.sh
source $DOTFILES/linux/symlinks.sh
source $DOTFILES/linux/zplug.sh
source $DOTFILES/linux/libsecret.sh

# --------------------------------------------
# Cleanup
# --------------------------------------------

source $DOTFILES/linux/cleanup.sh
source $DOTFILES/linux/set-shell.sh

