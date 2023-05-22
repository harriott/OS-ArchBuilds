#!/bin/bash
# vim: fdl=1:

# gdAUR  is defined in $Bash/bashrc-console

set -ev
trap read debug  # puts a read request after each executable line

#=> Aura
gAUR aura
nvim -c "silent! /https:\/\/github.com\/fosskers\/aura" PKGBUILD
makepkg -sic  # takes ages
true

# #=> auracle-git
# gdAUR auracle-git
# nvim -c "silent! /falconindy" PKGBUILD
# makepkg -sic
# true

# #=> Dropbox public key
# gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# #=> pgpdump
# sudo pacman -S pgpdump

# #=> Python 2.7 remove
# sudo pacman -Rs python2

# #=> Rust Toolchain - for Dust
# # 1 rustup
# sudo pacman -S rustup

# # 2 Rust Toolchain
# rustup toolchain install stable

# #=> systemd-resolved
# # Can't recall the advantage of this...
# sudo systemctl enable systemd-resolved.service --now
# systemctl status systemd-resolved.service

