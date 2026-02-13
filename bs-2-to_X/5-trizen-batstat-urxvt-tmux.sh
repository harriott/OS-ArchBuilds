#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-2-to_X/5-trizen-batstat-urxvt-tmux.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gdAUR  &  rAUR  are defined in $AjB/bashrc-console

# #=> 0 trizen install
# # needed for  gAUR
# cd ~/Arch/AUR
# rAUR trizen
# git clone https://aur.archlinux.org/trizen.git
# cd trizen
# nvim -c "silent! /trizen" PKGBUILD
# makepkg -sic

# #=> 1 batstat-git
# # battery status
# gdAUR batstat-git
# nvim -c "silent! /xeruf" PKGBUILD
# makepkg -sic

# #=> 1 rxvt-unicode 0 install
# sudo pacman -S urxvt-perls  # provides keyboard-select and brings in  rxvt-unicode

# #=> 1 rxvt-unicode 0 remove
# sudo pacman -Rs urxvt-perls rxvt-unicode  # in that order

#=> 1 rxvt-unicode-truecolor-wide-glyphs
gAUR rxvt-unicode-truecolor-wide-glyphs
nvim -c "silent! /software.schmorp.de" PKGBUILD
makepkg -sic
true

# #=> 1 tmux-bash-completion-git
# # depends on bash-completion
# gdAUR tmux-bash-completion-git
# nvim -c "silent! /imomaliev" PKGBUILD
# makepkg -sic

# #=> 1 trizen update
# gAUR trizen
# nvim -c "silent! /trizen" PKGBUILD
# makepkg -sic

