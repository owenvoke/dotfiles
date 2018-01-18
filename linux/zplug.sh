if [[ $(command -v zplug) ]]; then
    # Install
    curl -sL --proto-redir -all,https \
    https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
