test -r $HOME/.env.local && source $HOME/.env.local
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
  zplug "plugins/encode64", from:oh-my-zsh
  zplug "plugins/gitfast", from:oh-my-zsh

  # Plugins from zsh users
  zplug "zsh-users/zsh-autosuggestions"
  zplug "zsh-users/zsh-completions"
  zplug "zsh-users/zsh-syntax-highlighting", defer:2

  # Additional plugins
  zplug "denysdovhan/gitio-zsh"
  zplug "jasonmccreary/git-trim"
  zplug "sptndc/phpenv.plugin.zsh"
  zplug "mfaerevaag/wd", as:command, use:"wd.sh", hook-load:"wd() { . $ZPLUG_REPOS/mfaerevaag/wd/wd.sh }"

  # Then, source plugins and add commands to $PATH
  zplug load # --verbose

  # Theme
  eval "$(starship init zsh)"
fi


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


