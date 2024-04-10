#!/bin/bash

# bash $OSAB/bs-2-to_X/6-prepare_forSoftwares.sh

# gdAUR  is defined in $Bash/bashrc-console

set -ev
trap read debug  # puts a read request after each executable line

# #=> 0 Aura
# gAUR aura
# nvim -c "silent! /https:\/\/github.com\/fosskers\/aura" PKGBUILD
# makepkg -sic  # takes ages
# true

#=> 0 auracle-git
gdAUR auracle-git
nvim -c "silent! /inglor" PKGBUILD
makepkg -sic  # takes a while
true

# #=> 0 Dropbox public key
# gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# #=> 0 pgpdump
# sudo pacman -S pgpdump

# #=> 0 Python 2.7 remove
# sudo pacman -Rs python2

# #=> 0 Rust
# # for  Alacritty  &  Dust
# sudo pacman -S rustup

# #=> 0 systemd-resolved
# # Can't recall the advantage of this...
# sudo systemctl enable systemd-resolved.service --now
# systemctl status systemd-resolved.service

# #=> 1 Alacritty
# sudo pacman -S alacritty

# #=> 1 Rust Toolchain
# # for  Dust
# rustup toolchain install stable

