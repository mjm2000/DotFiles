#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '



export EDITOR='nvim'

export VISUAL='nvim'

export PATH=$PATH:~/bin

alias vim="nvim"

alias v="nvim"

alias sv="sudo nvim"

alias p="sudo pacman"


alias eb="v ~/.bashrc"

alias ev="v ~/.config/nvim/init.vim"

alias ei3="v ~/.config/i3/config"

alias rb="source ~/.bashrc"

alias config="cd ~/.config"

alias l="ls -larts"

alias r="ranger"
