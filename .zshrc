test -r $HOME/.shell-aliases && source $HOME/.shell-aliases

if [ -f $HOME/.zplug/init.zsh ]; then
  source $HOME/.zplug/init.zsh

  # compinit
  autoload -Uz compinit && compinit

  # zplug
  zplug "zplug/zplug", hook-build:'zplug --self-manage'

  # Theme
  zplug "denysdovhan/spaceship-prompt", \
    use:spaceship.zsh, \
    from:github, \
    as:theme

  # Plugins from oh my zsh
  zplug "plugins/docker", from:oh-my-zsh
  zplug "plugins/dotenv", from:oh-my-zsh
  zplug "plugins/encode64", from:oh-my-zsh
  zplug "plugins/git", from:oh-my-zsh
  zplug "plugins/git-flow", from:oh-my-zsh

  # Plugins from zsh users
  zplug "zsh-users/zsh-autosuggestions"

  # Additional plugins
  zplug "sptndc/phpenv.plugin.zsh"

  # Then, source plugins and add commands to $PATH
  zplug load # --verbose
fi
