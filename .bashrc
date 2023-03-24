#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;92m\]\u\[\033[1;39m\]@\[\033[00m\]\[\033[1;36m\]\h\[\033[00m\] \[\033[1;34m\]\w\[\033[1;39m\]\$\[\033[00m\] '

# Alias definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

complete -cf doas

# Tilix Config
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi
