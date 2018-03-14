#!/usr/bin/env bash

# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

echo "Removing old dotfiles"
rm -rf \
    $HOME/.gitconfig \
    $HOME/.gitconfig-work \
    $HOME/.gitignore_global \
    $HOME/.git-commit-template \
    $HOME/.zprofile \
    $HOME/.bash_profile \
    $HOME/.zshrc \
    $HOME/.gnupg/gpg.conf

# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------
echo "Linking new dotfiles"

# Bash Files
ln -s $DOTFILES/bash/bash_profile $HOME/.bash_profile

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
