#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 Dropbox public key
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# #=> 0 GnuPG directory
# # create & populate ~/.gnupg
# gpg --list-keys

# #=> 0 Pandoc directory
# mkdir -p ~/.pandoc/defaults

#=> 0 Rust Toolchain - for Dust
# 1 rustup
sudo pacman -S rustup

# 2 Rust Toolchain
rustup toolchain install stable

# #=> 1 configure GnuPG for pinentry
# # gpg-agent.conf symlink for passphrase
# ln -s $ARCHBUILDS/jo/gpg-agent.conf ~/.gnupg/gpg-agent.conf

# # pinentry
# export GPG_TTY=$(tty)

