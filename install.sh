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

read -p "Install apt packages and additionals? [y/N]" -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
    source $DOTFILES/install/apt.sh
    source $DOTFILES/install/php.sh
    source $DOTFILES/install/ledger.sh
fi
source $DOTFILES/install/symlinks.sh
source $DOTFILES/install/composer.sh
source $DOTFILES/install/yarn.sh
source $DOTFILES/install/zplug.sh
source $DOTFILES/install/libsecret.sh
source $DOTFILES/install/node.sh

# --------------------------------------------
# Finalise
# --------------------------------------------

sudo chmod +x $DOTFILES/bin/*

# --------------------------------------------
# Cleanup
# --------------------------------------------

source $DOTFILES/install/cleanup.sh
source $DOTFILES/install/set-shell.sh
