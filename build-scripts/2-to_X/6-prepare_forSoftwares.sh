#!/bin/bash

# bash <thisfile>.sh

# gctm  &  rAUR  are defined in $Bash/bashrc-console

set -ev
trap read debug  # puts a read request after each executable line

#=> auracle-git
gdAUR auracle-git
nvim -c "silent! /falconindy" PKGBUILD
makepkg -sic
true

#=> Dropbox public key
gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

#=> GnuPG directory
gpg -k  # creates & populates  ~/.gnupg

#=> pgpdump
sudo pacman -S pgpdump

#=> Rust Toolchain - for Dust
# 1 rustup
sudo pacman -S rustup

# 2 Rust Toolchain
rustup toolchain install stable

