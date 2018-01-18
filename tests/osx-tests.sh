#!/usr/bin/env bash

testBrewIsInstalled() {
	assertEquals "/usr/local/bin/brew" "$(which brew)"
}

testZshIsDefaultShell() {
	assertEquals "$(which zsh)" "$SHELL"
}

testZplugIsInstalled() {
	assertTrue "[ -d '${HOME}/.zplug' ]"
}

testSymlinksHaveBeenCreated() {
	assertTrue "[ -f '${HOME}/.gitconfig' ]"
	assertTrue "[ -f '${HOME}/.gitconfig-work' ]"
	assertTrue "[ -f '${HOME}/.gitignore_global' ]"
	assertTrue "[ -f '${HOME}/.zprofile' ]"
	assertTrue "[ -f '${HOME}/.bash_profile' ]"
	assertTrue "[ -f '${HOME}/.zshrc' ]"
	assertTrue "[ -f '${HOME}/.gnupg/gpg.conf' ]"
}

source ./shunit2-2.1.7/shunit2
