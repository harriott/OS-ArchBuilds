#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# place xinitrc
cp $( dirname "${BASH_SOURCE[0]}" )/xinitrc ~/.xinitrc

# trash-cli
sudo pacman -S trash-cli
trash-list

# SSH keys
mkdir ~/.ssh
cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram ~/.ssh/id_rsa
cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram.pub ~/.ssh/id_rsa.pub

# generate 00-keyboard.conf
sudo localectl --no-convert set-x11-keymap fr logitech_base

# Terminal emulators
sudo pacman -S rxvt-unicode xterm

# now try  startx

