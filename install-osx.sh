#!/usr/bin/env bash
DOTFILES=$HOME/.dotfiles

echo " ----------------------"
echo " Installing dotfiles"
echo " ----------------------"

# --------------------------------------------
# Install Homebrew
# --------------------------------------------

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

source $DOTFILES/osx/brew.sh
source $DOTFILES/linux/symlinks.sh
source $DOTFILES/linux/zplug.sh

# --------------------------------------------
# Cleanup
# --------------------------------------------

source $DOTFILES/linux/cleanup.sh
source $DOTFILES/linux/set-shell.sh
