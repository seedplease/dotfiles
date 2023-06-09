#!/bin/bash

# Universal aliases for my arch machines
alias sudo="doas"
alias syncup="doas pacman -Syy"
alias upgrade="yay -Syu"
alias myip="curl ipinfo.io"
alias autoremove="doas bash ~/scripts/arch-autoremove.sh"
alias cl="clear"
alias cls="clear"
alias ex="exit"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias la="ls -a"
alias ll="ls -l"
alias llh="ls -lh"
alias lla="ls -la"
alias llah="ls -lha"
alias llha="ls -lha"
alias cll="clear && ls -l"
alias cllh="clear && ls -lh"
alias clla="clear && ls -la"
alias cllah="clear && ls -lha"
alias cllha="clear && ls -lha"
alias monblk="watch -n2 lsblk"
alias cpf="clear && pfetch"
alias mkdir="mkdir -v"
alias mkd="mkdir -pv"
alias cpumon="watch -n1 'cat /proc/cpuinfo | grep \"^[c]pu MHz\" ; sensors'"
alias tempmon="watch -n1 'sensors | grep \"Tccd1:\"'"
alias rmatrix="cmatrix -abk -C cyan"
alias doasedit="sh ~/scripts/doasedit"
alias vim="nvim"
alias oldvim="/usr/bin/vim"
alias i3edit="vim ~/.config/i3/config"
alias baredit="vim ~/.config/polybar/config.ini"
alias swayedit="vim ~/.config/sway/config"
alias waybaredit="vim ~/.config/waybar/config"
alias aliasedit="vim ~/.bash_aliases"
#alias feh="feh -. && disown"
# iOS aliases for libimobiledevice and ifuse tools.
alias imount="idevicepair pair && ifuse ~/mnt-ios/ios" # Pair device and mount main filesystem
alias iumount="fusermount -u ~/mnt-ios/ios" # Unmount the main filesystem
alias iapplist="ifuse --list-apps" # List the apps which have storage to be mounted
alias iappmount="ifuse --documents" #<APPID> <mountpoint>
alias iappumount="fusermount -u" #<mountpoint>
