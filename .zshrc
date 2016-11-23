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
export TERMINAL=terminator

# ALIASES
alias al="~/Android/Sdk/platform-tools/adb shell input keyevent 82"
alias pyvenv=~/.utils/pyvenv
alias vnt="vim +NERDTree"

# ANDROID EXPORTS
PATH="~/Android/Sdk/tools:~/Android/Sdk/platform-tools:${PATH}"
export PATH
export ANDROID_HOME=~/Android/Sdk
