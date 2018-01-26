#!/usr/bin/env pwsh
$Env:DOTFILES = "$Env:userprofile/.dotfiles"

echo " ----------------------"
echo " Installing dotfiles"
echo " ----------------------"

# --------------------------------------------
# Install Chocolatey
# --------------------------------------------

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
C:\ProgramData\Chocolatey\bin\RefreshEnv.cmd

# --------------------------------------------
# Clone dotfiles repository
# --------------------------------------------

if( Test-Path -Path "$Env:DOTFILES" )
{
    git -C $Env:DOTFILES pull
}
else
{
    git clone https://github.com/pxgamer/dotfiles.git $Env:DOTFILES
}

# --------------------------------------------
# Install additional binaries
# --------------------------------------------

$Env:DOTFILES/windows/choco.ps1
$Env:DOTFILES/windows/symlinks.ps1

# --------------------------------------------
# Cleanup
# --------------------------------------------

$Env:DOTFILES/windows/cleanup.ps1
