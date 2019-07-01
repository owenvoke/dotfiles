# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
test -r /etc/bashrc && . /etc/bashrc

test -r $HOME/.shell-aliases && . $HOME/.shell-aliases

test -r $HOME/.bashrc.local && . $HOME/.bashrc.local
