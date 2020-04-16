#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# place xinitrc
cp $( dirname "${BASH_SOURCE[0]}" )/xinitrc ~/.xinitrc

# trash-cli
sudo pacmatic -S trash-cli
trash-list

# autojump
sudo pacmatic -S autojump
autojump -h

# SSH keys
mkdir ~/.ssh
cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram ~/.ssh/id_rsa
cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram.pub ~/.ssh/id_rsa.pub

## gVim
# ...

# now try  startx

