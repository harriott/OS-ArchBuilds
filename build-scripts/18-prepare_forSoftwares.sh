#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 AURdev
# mkdir ~/Arch/AURdev-clone
# mkdir ~/Arch/AURdev-make

# #=> 0 GnuPG directory
# # create & populate ~/.gnupg
# gpg -k

# #=> 0 Pandoc directory
# mkdir -p ~/.pandoc/defaults

# #=> 0 Rust Toolchain - for Dust
# # 1 rustup
# sudo pacman -S rustup

# # 2 Rust Toolchain
# rustup toolchain install stable

# #=> 1 configure GnuPG for pinentry
# # pinentry
# export GPG_TTY=$(tty)

# # and will need  ~/.gnupg/gpg-agent.conf  for passphrase

# #=> 1 Dropbox public key
# gpg --keyserver keys.gnupg.net --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

#=> 2 auracle-git
cd ~/Arch/AURdev-clone
rAUR auracle-git
git clone https://aur.archlinux.org/auracle-git.git
cd auracle-git
gvim PKGBUILD
makepkg -sic
true

