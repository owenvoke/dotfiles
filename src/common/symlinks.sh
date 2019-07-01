#!/usr/bin/env bash

# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

e_info "Removing old dotfiles"

rm -rf $HOME/.gitconfig
rm -rf $HOME/.gitconfig-work
rm -rf $HOME/.gitignore-global
rm -rf $HOME/.git-commit-template
rm -rf $HOME/.profile
rm -rf $HOME/.zprofile
rm -rf $HOME/.bash_profile
rm -rf rm -rf $HOME/.zshrc
rm -rf $HOME/.gnupg/gpg.conf
rm -rf $HOME/.gnupg/dirmngr.conf

# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------
e_info "Linking new dotfiles"

# Bash Files
ln -s $DOTFILES/bash/bash_profile $HOME/.bash_profile
ln -s $DOTFILES/bash/profile $HOME/.profile

# Git Files
ln -s $DOTFILES/git/config $HOME/.gitconfig
ln -s $DOTFILES/git/config-work $HOME/.gitconfig-work
ln -s $DOTFILES/git/ignore $HOME/.gitignore-global
ln -s $DOTFILES/git/commit-template $HOME/.git-commit-template

# ZSH Files
ln -s $DOTFILES/zsh/profile $HOME/.zprofile
ln -s $DOTFILES/zsh/rc $HOME/.zshrc

# GPG Files
if [ ! -d $HOME/.gnupg ]; then
    mkdir $HOME/.gnupg
fi

ln -s $DOTFILES/gnupg/gpg.conf $HOME/.gnupg/gpg.conf
ln -s $DOTFILES/gnupg/dirmngr.conf $HOME/.gnupg/dirmngr.conf
chmod 700 $HOME/.gnupg
