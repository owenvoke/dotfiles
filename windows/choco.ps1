#!/usr/bin/env pwsh

# Chocolatey updates
choco upgrade all

# Install Chocolatey dependencies
choco install git -y
choco install gpg4win -y
choco install php -y
choco install ruby -y
choco install curl -y
choco install powershell-core -y
