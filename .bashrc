# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
test -r /etc/bashrc && . /etc/bashrc

test -r ~/.shell-aliases && . ~/.shell-aliases

test -r ~/.bashrc.local && . ~/.bashrc.local
