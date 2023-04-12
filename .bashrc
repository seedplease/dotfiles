#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

# Set different PS1s for different machines
if [[ "$HOSTNAME" == "archbox" ]]; then
	PS1='\[\033[1;92m\]\u\[\033[1;39m\]@\[\033[00m\]\[\033[1;36m\]\h\[\033[00m\] \[\033[1;34m\]\W\[\033[1;39m\]\$\[\033[00m\] '
fi

if [[ "$HOSTNAME" == "archpad" ]]; then
	PS1='\[\033[1;31m\]\u\[\033[1;39m\]\[\033[1;90m\]@\h \[\033[1;33m\]\W\[\033[1;39m\]\$\[\033[00m\] '
fi

# Generic Alias definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Overwrite some aliases based on hostname
if [[ "$HOSTNAME" == "archpad" ]]; then
	alias kdbx-up="cd ~/Keepassdb && git add . && git commit -m 'archpad' && git push && cd ~"
	alias kdbx-dn="cd ~/Keepassdb && git pull && cd ~"
	alias tempmon="watch -n1 'sensors | grep \"Core 1:\"'"
fi

complete -cf doas

# Tilix Config
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

# Kitty Config
if [[ "$TERM" == "xterm-kitty" ]]; then
	alias vim="/usr/bin/vim -T kitty"
fi
