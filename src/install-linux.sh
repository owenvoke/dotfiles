#!/usr/bin/env bash

is_ubuntu || return 1

# --------------------------------------------
# Install additional binaries
# --------------------------------------------

. $DOTFILES/src/linux/apt.sh
. $DOTFILES/src/common/zplug.sh
. $DOTFILES/src/linux/libsecret.sh

# --------------------------------------------
# Cleanup
# --------------------------------------------

. $DOTFILES/src/common/set-shell.sh
