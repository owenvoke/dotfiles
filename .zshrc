test -r ~/.shell-aliases && source ~/.shell-aliases

if [ -f $ZPLUG_HOME/init.zsh ]; then
  source $HOME/.zplug/init.zsh

  # compinit
  autoload -Uz compinit
  compinit

  # zplug
  zplug "zplug/zplug", hook-build:'zplug --self-manage'

  # Theme
  zplug "dracula/zsh", as:theme

  # Plugins
  zplug "plugins/git", from:oh-my-zsh
  zplug "plugins/nvm", from:oh-my-zsh
  zplug "bobthecow/git-flow-completion"
  zplug "sptndc/phpenv.plugin.zsh"

  # Install plugins if there are plugins that have not been installed
  if ! zplug check --verbose; then
    printf "Install zsh plugins? [y/N]: "
    if read -q; then
      echo; zplug install
    fi
  fi

  # Then, source plugins and add commands to $PATH
  zplug load # --verbose
fi
