#!/bin/bash
# vim: sw=1:

# gAUR  rAUR  are defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 Pádraig Brady's key for coreutils
# for advcp
gpg -k
gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9
true

#=> 0 pmount
# for  nmount  plugin (which I don't use)
cd ~/Arch/AUR
git clone https://aur.archlinux.org/pmount.git
cd pmount
nvim PKGBUILD
makepkg -sic

#=> 1 advcp
# for nnn -r
# it's been integrated into  advcpmv
gAUR advcp
nvim -c "silent! /advcp" PKGBUILD
# requires Pádraig Brady's key
makepkg -sic  # takes a long time

