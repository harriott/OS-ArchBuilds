#!/bin/bash

# bash $OSAB/bs-repeatable/AURs.sh

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# trzAUR  trzAURd  rAUR  are defined in $AjB/bashrc-console

# #=> cpu-x 0 mawk
# trzAUR mawk
# nvim -c "silent! /invisible-island.net\/mawk" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 0 install
# trzAUR cpu-x
# nvim -c "silent! /thetumultuousunicornofdarkness.github.io\/CPU-X" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 1 remove
# sudo pacman -Rs cpu-x

# #=> fonts - fontpreview-git
# trzAURd fontpreview-git
# nvim -c "silent! /sdushantha" PKGBUILD
# makepkg -sic

# #=> fonts - lohit-fonts
# trzAUR lohit-fonts
# nvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

#=> fonts - ttf-poppins
trzAUR ttf-poppins
nvim -c "silent! /github.com\/itfoundry\/poppins" PKGBUILD
makepkg -sic
true

