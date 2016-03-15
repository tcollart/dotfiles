# MAIN CONF
## Path to your oh-my-zsh installation.
export ZSH=/home/tcollart/.oh-my-zsh

ZSH_THEME="robbyrussell"

## ZSH PLUGINS
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
source $ZSH/oh-my-zsh.sh


# EXPORTS
export LANG=en_US.UTF-8
export TERMINAL=urxvt

# ALIASES
alias pyvenv=~/.utils/pyvenv
