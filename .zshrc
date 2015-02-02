# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="brantwynn"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew history last-working-dir)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

unset MAILCHECK

unsetopt correct_all

# default path
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# append mysql to path
export PATH=$PATH:/usr/local/mysql/bin

# prepend homebrew to path
export PATH=/usr/local/bin:$PATH

# prepend composer to path
export PATH="$HOME/.composer/vendor/bin:$PATH"

# prepend liip php to path
export PATH=/usr/local/php5/bin:$PATH

# prepend rbenv to path
export PATH="$HOME/.rbenv/bin:$PATH"

# My custom functions
. ~/bin/unix.sh
. ~/bin/dice.sh
. ~/bin/vice.sh
. ~/bin/dfwc.sh
. ~/bin/d8clean.sh
. ~/bin/behat.sh

# aliases
alias pig=grunt
alias git=hub
alias sudp=sudo
alias si='yes "yes" |'

# Macros
# . ~/bin/up.sh
ls

# Node Version Manager
. ~/.nvm/nvm.sh

# include AH profile
if [ -f ~/.ah_profile ]; then
  autoload bashcompinit
  bashcompinit
  . ~/.ah_profile
fi

