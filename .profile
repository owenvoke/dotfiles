# If running bash include .bashrc if it exists
if [[ -n "$BASH_VERSION" && -f "$HOME/.bashrc" ]]; then
    . "$HOME/.bashrc"
fi
