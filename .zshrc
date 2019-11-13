# ZSH
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Locale
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"

# Term
export TERM="xterm-256color"

# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="agnoster"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
