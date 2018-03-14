#!/usr/bin/env bash

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_info "Installing Homebrew"
  true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brew updates
brew doctor
brew update

# Brew taps
brew tap homebrew/homebrew-php

# Install Brew dependencies
brew install git
brew install coreutils
brew install gnupg
brew install zsh
brew install php72
brew install gawk

# Remove outdated versions
brew cleanup
