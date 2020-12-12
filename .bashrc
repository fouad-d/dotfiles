#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return


#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\[\e[1;33m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;33m\]]\[\e[m\]\[\e[1;34m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[1;31m\]>\[\e[m\] "
# PS1 Prompt
#export PS1="\w > \[$(tput sgr0)\]" 
# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
