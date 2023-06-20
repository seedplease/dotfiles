#!/bin/bash

function yes_or_no {
	while true; do
		read -p "$* [y/n]: " yn
		case $yn in
			[Yy]*) return 0 ;;
			[Nn]*) echo "Aborted" ; return 1 ;;
		esac
	done
}

yes_or_no "Copy .bashrc and .bash_aliases to $HOME ?" && cp ~/git/dotfiles/.bashrc ~/git/dotfiles/.bash_aliases ~
