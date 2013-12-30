# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rake="noglob rake"
alias emacs="/opt/boxen/homebrew/bin/emacs"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# path customizations -- looks like boxen takes care of this?
# export PATH="$HOME/.rbenv/bin:$PATH"
# export PATH="$HOME/usr/local/bin:$PATH"
# export PATH="$HOME/bin:$PATH"
# export PATH="$HOME/.ec2/bin:$PATH"
# export PATH="$HOME/scripts:$PATH"

# other misc customizations
eval "$(rbenv init - zsh)"
export TERM=xterm-256color

# adding rubygems to path
export RUBYOPT=rubygems

# trying to fix errors 
setopt extended_glob

# adding for boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
