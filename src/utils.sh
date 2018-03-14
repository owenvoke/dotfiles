#!/usr/bin/env bash

# Styling
if which tput >/dev/null 2>&1; then
  ncolors=$(tput colors)
fi

if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  BLACK="$(tput setaf 0)"
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  BLUE="$(tput setaf 4)"
  MAGENTA="$(tput setaf 5)"
  CYAN="$(tput setaf 6)"
  WHITE="$(tput setaf 7)"
  BOLD="$(tput bold)"
  NORMAL="$(tput sgr0)"
else
  BLACK=""
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  MAGENTA=""
  CYAN=""
  WHITE=""
  BOLD=""
  NORMAL=""
fi

e_section() {
  printf "\n${BLUE}$@\n"
  printf "=================================================================${NORMAL}\n"
}

e_question() {
  printf "\n${BLUE}♻${NORMAL} ${CYAN}$@${NORMAL}\n"
}

e_header() {
  printf "\n${BLUE}★★★★★${NORMAL} ${CYAN}$@${NORMAL} ${BLUE}★★★★★${NORMAL}\n"
}

e_success() {
  printf "${GREEN}✔${NORMAL} $@\n"
}

e_error() {
  printf "${RED}✖${NORMAL} $@\n"
}

e_info() {
  printf "${YELLOW}➜${NORMAL} $@\n"
}

# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

function is_ubuntu() {
  [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]] || return 1
}

# Other
function version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1"; }
