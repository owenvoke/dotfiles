#!/usr/bin/env bash
DOTFILES=$HOME/.dotfiles

echo "--------------------------------------------------------------------------------------------------"
echo "Installing dotfiles"
echo "--------------------------------------------------------------------------------------------------"

# --------------------------------------------------------------------------------------------------
# Install required dependencies
# --------------------------------------------------------------------------------------------------

sudo apt update
source $DOTFILES/install/apt.sh

# --------------------------------------------------------------------------------------------------
# Clone dotfiles repository
# --------------------------------------------------------------------------------------------------

if [ -d $HOME/.dotfiles ]; then
	git -C $DOTFILES pull
else
	git clone https://github.com/pxgamer/dotfiles.git $DOTFILES
fi

# --------------------------------------------------------------------------------------------------
# Install additional binaries
# --------------------------------------------------------------------------------------------------

source  $DOTFILES/install/link.sh
source  $DOTFILES/install/composer.sh
source  $DOTFILES/install/yarn.sh
source  $DOTFILES/install/zplug.sh
source  $DOTFILES/install/libsecret.sh

# --------------------------------------------------------------------------------------------------
# Cleanup
# --------------------------------------------------------------------------------------------------

source $DOTFILES/install/cleanup.sh
source $DOTFILES/install/set-shell.sh
