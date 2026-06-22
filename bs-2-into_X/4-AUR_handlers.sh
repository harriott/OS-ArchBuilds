#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-2-into_X/4-AUR_handlers.sh

set -v  # quits on error, prints each statement here, including comments
shopt -s expand_aliases

# rAUR, trzAUR, trzAURd  are defined in  $AjB/bashrc-console

# #=> 0 trizen install
# # needed for  trzAUR
# cd ~/Arch/AUR
# rAUR trizen
# git clone https://aur.archlinux.org/trizen.git
# cd trizen
# nvim -c "silent! /trizen" PKGBUILD
# makepkg -sic

# #=> 1 base-devel
# # needed for  Pikaur, yay
# sudo pacman -S --needed base-devel

# #=> 2 Pikaur
# trzAUR pikaur
# nvim -c "silent! /github.com\/actionless\/pikaur" PKGBUILD
# makepkg -sic
# pikaur -Syu  # to generate  ~/.config/pikaur.conf
# sed -i 's/^noedit = no/noedit = yes/' ~/.config/pikaur.conf

#=> 3 Rust
# for  Alacritty, aur-scanner, Dust
pikn rustup

#=> 3 aur-scanner
gpg --recv-keys 25631EAE3F43999050B7D7021132BF893C33FB51
pikn aur-scanner  # downloads a load crates, then takes a while to build

#=> 3 auracle-git
pikn auracle-git

#=> 3 paru
pikn paru

#=> 3 yay
pikn yay

#=> 3 traur
pikn traur  # downloads a load crates, then takes a while to build

