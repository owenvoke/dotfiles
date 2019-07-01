# If running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Include local/bin directory
if [ -d "/usr/local/bin" ]; then
    PATH="/usr/local/bin:$PATH"
fi

# Include custom bin directory
if [ -d "$HOME/.bin" ]; then
    PATH="$HOME/.bin:$PATH"
fi

# Include Composer bin directory
if [ -d "$HOME/.composer/vendor/bin" ]; then
    PATH="$HOME/.composer/vendor/bin:$PATH"
elif [ -d "$HOME/.config/composer/vendor/bin" ]; then
    PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi
