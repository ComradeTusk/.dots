# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache
# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_COMPDUMP=$XDG_CACHE_HOME/.zcompdump
export HISTFILE="$XDG_CACHE_HOME/.zhistory"
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
HISTORY_IGNORE='(git reset*|clear|reboot|shutdown|exit|cd ..|cd ~|..|~)'
# editor
export EDITOR="nvim"
export VISUAL="nvim"

export MANPAGER='nvim +Man!'
