test -r $HOME/.shell-aliases && source $HOME/.shell-aliases
test -r $HOME/.paths && source $HOME/.paths

if [ -f $HOME/.zplug/init.zsh ]; then
  source $HOME/.zplug/init.zsh

  # compinit
  autoload -Uz compinit && compinit

  # zplug
  zplug "zplug/zplug", hook-build:'zplug --self-manage'

  # Plugins from oh my zsh
  zplug "plugins/docker", from:oh-my-zsh
  zplug "plugins/dotenv", from:oh-my-zsh
  zplug "plugins/encode64", from:oh-my-zsh

  # Plugins from zsh users
  zplug "zsh-users/zsh-autosuggestions"
  zplug "zsh-users/zsh-completions"
  zplug "zsh-users/zsh-syntax-highlighting", defer:2

  # Additional plugins
  zplug "denysdovhan/gitio-zsh"
  zplug "sptndc/phpenv.plugin.zsh"

  # Then, source plugins and add commands to $PATH
  zplug load # --verbose

  # Theme
  eval "$(starship init zsh)"
fi
