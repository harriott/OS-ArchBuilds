#!/bin/bash

# bash <thisfile>.sh

#  gctm  is defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 AURdev
mkdir ~/Arch/AURdev-clone
mkdir ~/Arch/AURdev-make

#=> 0 GnuPG directory
# create & populate ~/.gnupg
gpg -k

#=> 0 Pandoc directory
mkdir -p ~/.pandoc/defaults

#=> 0 Rust Toolchain - for Dust
# 1 rustup
sudo pacman -S rustup

# 2 Rust Toolchain
rustup toolchain install stable

#=> 1 gpg-agent configuration
export GPG_TTY=$(tty)  # for pinentry
ln -sf $ARCHBUILDS/jo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

#=> 1 Dropbox public key
gpg --keyserver keys.gnupg.net --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

#=> 1 pgpdump
sudo pacman -S pgpdump

#=> 2 auracle-git
cd ~/Arch/AURdev-clone
rAUR auracle-git
git clone https://aur.archlinux.org/auracle-git.git
gctm auracle-git
gvim -c "silent! /falconindy" PKGBUILD
makepkg -sic
true

