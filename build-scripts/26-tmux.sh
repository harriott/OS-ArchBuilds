#!/bin/bash
# vim: fdl=1:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# bash 26-tmux.sh
# gctm  &  rAUR  are defined in $Bash/bashrc-console

# #=> 0 tmux configuration
# ln -sf $tmx/tmux.conf ~/.tmux.conf

# #=> 0 trizen
# cd ~/Arch/AUR
# rAUR trizen
# git clone https://aur.archlinux.org/trizen.git
# cd trizen
# nvim -c "silent! /trizen" PKGBUILD
# makepkg -sic
# cd ~

#=> 1 tmux-bash-completion-git
# depends on bash-completion, and brings in tmux
cd ~/Arch/AURdev-clone
rAUR tmux-bash-completion-git
trizen -G tmux-bash-completion-git
gctm tmux-bash-completion-git
nvim -c "silent! /imomaliev" PKGBUILD
makepkg -sic

