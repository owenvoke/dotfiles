#!/usr/bin/env bash

# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

e_info "Removing old dotfiles"

rm -rf $HOME/.gitconfig
rm -rf $HOME/.gitconfig-work
rm -rf $HOME/.gitignore_global
rm -rf $HOME/.git-commit-template
rm -rf $HOME/.profile
rm -rf $HOME/.bash_profile
rm -rf rm -rf $HOME/.zshrc
rm -rf $HOME/.gnupg/gpg.conf

# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------
e_info "Linking new dotfiles"

# Bash Files
ln -s $DOTFILES/bash/bash_profile $HOME/.bash_profile
ln -s $DOTFILES/bash/profile $HOME/.profile

# Git Files
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitconfig-work $HOME/.gitconfig-work
ln -s $DOTFILES/git/gitignore $HOME/.gitignore_global
ln -s $DOTFILES/git/git-commit-template $HOME/.git-commit-template

# ZSH Files
ln -s $DOTFILES/zsh/zprofile $HOME/.zprofile
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc

# GPG Files
if [ ! -d $HOME/.gnupg ]; then
    mkdir $HOME/.gnupg
fi

ln -s $DOTFILES/gnupg/gpg.conf $HOME/.gnupg/gpg.conf
chmod 700 $HOME/.gnupg
