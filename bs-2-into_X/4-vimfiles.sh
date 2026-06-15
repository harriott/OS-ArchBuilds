#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-2-to_X/4-vimfiles.sh

set -ev
trap read debug  # puts a read request after each executable line

#=> 0 go & make
sudo pacman -S --needed go make  # needed for  hexokinase

#=> 1 configure gVim
cd ~
git clone git@github.com:harriott/vimfiles.git
mv vimfiles .vim
cd .vim
git remote rename origin gh
cd pack/ArchLinux
bash clones.sh
cd ~

