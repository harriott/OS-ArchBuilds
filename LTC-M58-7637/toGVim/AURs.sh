#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# Updates
# -------
sudo pacman -Syu
sudo pacman -S base-devel

# gVim
git clone git@github.com:harriott/vimfiles.git
mv vimfiles .vim
cp $( dirname "${BASH_SOURCE[0]}" )/gvimrc ~/.gvimrc
cp $( dirname "${BASH_SOURCE[0]}" )/vimrc ~/.vimrc

# AURs
# ----
mkdir ~/Arch
mkdir ~/Arch/AUR
cd ~/Arch/AUR

# auracle-git
git clone https://aur.archlinux.org/auracle-git.git
cd auracle-git
makepkg -sic
cd ..

# autojump-git
git clone https://aur.archlinux.org/autojump-git.git
cd autojump-git
makepkg -sic
autojump -h
cd ..

# Dropbox
git clone https://aur.archlinux.org/dropbox.git
cd dropbox
makepkg -sic
cd ..

# dust
git clone https://aur.archlinux.org/dust.git
cd dust
makepkg -sic
cd ..

# Fangfrisch
git clone https://aur.archlinux.org/python-fangfrisch.git
cd Fangfrisch
makepkg -sic
cd ..

# moar
git clone https://aur.archlinux.org/moar.git
cd moar
makepkg -sic
cd ..

cd ..
cd ..

