# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias la='ls -a'
alias ll='ls -lh '
alias lal='ls -lha '
alias lla='ls -lhl '
alias cl='clear'
alias n='nvim -p'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias br='nvim ~/.bashrc'
alias isc='nvim ~/.config/sway/config'
alias wy='nvim ~/.config/waybar/style.css'
alias z='zathura'
alias src='cd ~/.local/src/'
alias bin='cd ~/.local/bin/'

#Autocd
shopt -s autocd

export PATH=$HOME/.local/bin/:$PATH

export EDITOR='nvim'
export VISUAL='nvim'

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
