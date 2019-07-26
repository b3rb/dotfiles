# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color"
alias vtop="vtop -t wizard"

# preserves environmental variables
alias sudo="sudo -E env"
alias su="su -p"

# editor
export VISUAL="vim"
export EDITOR="vim"

# nnn
export NNN_CONTEXT_COLORS='2222'
export NNN_OPENER=xdg-open

# 6cord
export DISCORD_TOKEN="token"
alias 6cord="6cord -t $DISCORD_TOKEN"

# shell prompt
DEFAULT=$PS1
PS1="\[\033[1;31m\][\[\033[1;33m\]\u\[\033[1;32m\]@\[\033[1;34m\]\H \[\033[1;35m\]\w\[\033[1;31m\]]
\[\033[0;37m\]\$\[\033[0;00m\] "
