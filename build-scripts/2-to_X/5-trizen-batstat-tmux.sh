#!/bin/bash
# vim: fdl=1:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# bash 26-tmux.sh
# gdAUR  &  rAUR  are defined in $Bash/bashrc-console

#=> 0 trizen
# needed for  gAUR
cd ~/Arch/AUR
rAUR trizen
git clone https://aur.archlinux.org/trizen.git
cd trizen
nvim -c "silent! /trizen" PKGBUILD
makepkg -sic

#=> 1 batstat-git
# battery status
gdAUR batstat-git
nvim -c "silent! /xeruf" PKGBUILD
makepkg -sic

#=> 1 tmux-bash-completion-git
# depends on bash-completion
gdAUR tmux-bash-completion-git
nvim -c "silent! /imomaliev" PKGBUILD
makepkg -sic

