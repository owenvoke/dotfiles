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

source $DOTFILES/install/apt.sh
source $DOTFILES/install/symlinks.sh
source $DOTFILES/install/zplug.sh
source $DOTFILES/install/libsecret.sh

# --------------------------------------------
# Cleanup
# --------------------------------------------

source $DOTFILES/install/cleanup.sh
source $DOTFILES/install/set-shell.sh

