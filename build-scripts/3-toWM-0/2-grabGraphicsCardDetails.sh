#!/bin/bash
# vim: sw=2:

set -ev
trap read debug  # puts a read request after each executable line

#=> 0 lshw uninstall
sudo pacman -Rs lshw

#=> 0 lspci
lspci -vnn | grep VGA -A 12 > /home/jo/lspci-display.txt

#=> 1 lshw-git
gdAUR lshw-git
nvim -c "silent! /https:\/\/ezix.org\/src\/pkg\/lshw.git" PKGBUILD
makepkg -sic
true

#=> 2 lshw
ld=/home/jo/lshw-display.txt; sudo lshw -C display > $ld; chown jo:jo $ld

