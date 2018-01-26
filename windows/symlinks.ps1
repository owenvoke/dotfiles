#!/usr/bin/env pwsh

# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

echo "Removing old dotfiles"
del $Env:userprofile/.gitconfig
del $Env:userprofile/.gitconfig-work
del $Env:userprofile/.gitignore_global
del $Env:userprofile/.git-commit-template
del $Env:userprofile/.gnupg/gpg.conf

# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------

echo "Linking new dotfiles"

# Git Files
New-Item -Path $Env:userprofile/.gitconfig -ItemType SymbolicLink -Value $Env:DOTFILES/git/gitconfig
New-Item -Path $Env:userprofile/.gitconfig-work -ItemType SymbolicLink -Value $Env:DOTFILES/git/gitconfig-work
New-Item -Path $Env:userprofile/.gitignore_global -ItemType SymbolicLink -Value $Env:DOTFILES/git/gitignore
New-Item -Path $Env:userprofile/.git-commit-template -ItemType SymbolicLink -Value $Env:DOTFILES/git/git-commit-template

# GPG Files
if( -Not( Test-Path -Path "$Env:DOTFILES" ) )
{
    mkdir $Env:userprofile/.gnupg
}

New-Item -Path $Env:userprofile/.gnupg/gpg.conf -ItemType SymbolicLink -Value $Env:DOTFILES/gnupg/gpg.conf
