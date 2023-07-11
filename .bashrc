#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

# Set different variables for different machines
if [[ "$HOSTNAME" == "archpad" ]]; then
	PS1="\[\033[1;31m\]\u\[\033[1;39m\]\[\033[1;90m\]@\h \[\033[1;33m\]\W\[\033[1;39m\]\$\[\033[00m\] "
fi

if [[ "$HOSTNAME" == "arch-01" ]]; then
	PS1="\[\033[1;92m\]\u\[\033[1;39m\]@\[\033[00m\]\[\033[1;36m\]\h\[\033[00m\] \[\033[1;34m\]\W\[\033[1;39m\]\$\[\033[00m\] "
fi
if [[ "$HOSTNAME" == "arch-02" ]]; then
	PS1="\[\033[1;95m\]\u\[\033[1;39m\]@\[\033[00m\]\[\033[1;94m\]\h\[\033[00m\] \[\033[1;34m\]\W\[\033[1;39m\]\$\[\033[00m\] "
fi
if [[ "$HOSTNAME" == "localhost" ]]; then
	if [[ "$(whoami)" == "u0_a132" ]]; then
		PS1="\[\033[0;32m\]\u\[\033[0m\]@\[\033[0;34m\]\h\[\033[0m\]:\[\033[0;36m\]\w\[\033[0;31m\]$\[\033[0m\] "
		rt=$PREFIX
	fi
fi

###DEBIAN BASH SETTINGS FOR WSL 2###
if [[ "$HOSTNAME" == "2IM-DT148" ]]; then
	# set some environment variables
	export EDITOR=/home/patrick/bin/neovim/AppRun
	export VISUAL=/home/patrick/bin/neovim/AppRun
	export WUSR=/mnt/c/Users/PBrugliera
	export PROJ='/mnt/h/CURRENT PROJECTS/Active'
	export PULASKI='/mnt/h/CURRENT PROJECTS/Active/2004000 CookCounty_PulaskiRoad-PhaseI_Benesch'
	# debian-specific options
	HISTCONTROL=ignoreboth
	shopt -s histappend
	HISTSIZE=1000
	HISTFILESIZE=2000
	shopt -s checkwinsize
	# set variable identifying the chroot you work in (used in the prompt below)
	if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
		debian_chroot=$(cat /etc/debian_chroot)
	fi
	# set a fancy prompt (non-color, unless we know we "want" color)
	case "$TERM" in
		xterm-color|*-256color) color_prompt=yes;;
	esac
	if [ -n "$force_color_prompt" ]; then
		if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
			# We have color support; assume it's compliant with Ecma-48
			# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
			# a case would tend to support setf rather than setaf.)
			color_prompt=yes
		else
			color_prompt=
		fi
	fi
	if [ "$color_prompt" = yes ]; then
		PS1='${debian_chroot:+($debian_chroot)}\[\033[1;31m\]\u\[\033[1;39m\]@\[\033[0;31m\]\h \[\033[1;96m\]\W\[\033[1;39m\]\$\[\033[00m\] '
	else
		PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
	fi
	unset color_prompt force_color_prompt

	# If this is an xterm set the title to user@host:dir
	case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \W\a\]$PS1"
		;;
	*)
		;;
	esac
	# enable programmable completion features (you don't need to enable
	# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
	# sources /etc/bash.bashrc).
	if ! shopt -oq posix; then
		if [ -f /usr/share/bash-completion/bash_completion ]; then
			. /usr/share/bash-completion/bash_completion
		elif [ -f /etc/bash_completion ]; then
			. /etc/bash_completion
		fi
	fi
fi

# Bash alias file
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Private alias file
if [ -f ~/.bash_priv ]; then
	. ~/.bash_priv
fi

complete -cf doas

# Tilix Config
#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#	source /etc/profile.d/vte.sh
#fi
