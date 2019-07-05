test -r $HOME/.shell-aliases && source $HOME/.shell-aliases

if [ -f $HOME/.zplug/init.zsh ]; then
  source $HOME/.zplug/init.zsh

  # compinit
  autoload -Uz compinit
  compinit

  # zplug
  zplug "zplug/zplug", hook-build:'zplug --self-manage'

  # Theme
  zplug "denysdovhan/spaceship-prompt", \
    use:spaceship.zsh, \
    from:github, \
    as:theme

  # Plugins
  zplug "plugins/dotenv", from:oh-my-zsh
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
