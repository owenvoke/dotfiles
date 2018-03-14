#!/usr/bin/env bash

is_osx || return 1

# --------------------------------------------
# Install additional binaries
# --------------------------------------------

. $DOTFILES/src/osx/brew.sh
. $DOTFILES/src/common/zplug.sh

# --------------------------------------------
# Finalising
# --------------------------------------------

. $DOTFILES/src/common/set-shell.sh
