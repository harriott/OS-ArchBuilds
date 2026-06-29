#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-2-into_X/4-AUR_handlers.sh

set -v  # prints each statement here, including comments

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

# #=> 2 Pikaur 0 install
# trzAUR pikaur
# nvim -c "silent! /github.com\/actionless\/pikaur" PKGBUILD
# makepkg -sic
# pikaur -Syu  # to generate  ~/.config/pikaur.conf
# sed -i 's/^noedit = no/noedit = yes/' ~/.config/pikaur.conf

#=> 2 Pikaur 1 pikn
shopt -s expand_aliases; alias pikn='pikaur -S --needed'

#=> 3 Glaze
# for  auracle-git
pikn fmt glaze pod2man

# #=> 3 Rust
# # for  Alacritty, aur-scanner, Dust
# pikn rustup

#=> 3 Rust Toolchain
# for  auracle-git, Dust, paru
rustup toolchain install stable
rustup default stable

# #=> 4 aur-scanner
# gpg --recv-keys 25631EAE3F43999050B7D7021132BF893C33FB51
# pikn aur-scanner  # downloads a load crates, then takes a while to build

#=> 4 auracle-git
pikn auracle-git

#=> 4 paru
pikn paru  # downloads a load crates, then takes a while to build

# #=> 4 yay
# pikn yay

# #=> 4 traur
# pikn traur  # downloads a load crates, then takes a while to build

