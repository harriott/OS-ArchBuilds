#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Moto G4
# plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
sudo dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

#=> Updates
sudo pacman -Syu

#=> allow dhcpcd without pw
sudo bash -c "cat $( dirname "${BASH_SOURCE[0]}" )/sudoers-dhcpcd >> /etc/sudoers"
sudo visudo -c -f /etc/sudoers
sudo cat /etc/sudoers

#=> various Packages
# bat
sudo pacman -S bat

# broot
sudo pacman -S broot
broot  # to load  br

# fd
sudo pacman -S fd

# flake8
sudo pacman -S flake8

# fzf
sudo pacman -S fzf

# LastPass CLI
sudo pacman -S lastpass-cli

# ShellCheck (for bash linting in xVim)
sudo pacman -S shellcheck

# X settings
sudo pacman -S xorg-xset

# xsel
sudo pacman -S xsel

#=> configuration files
# gVim
git clone git@github.com:harriott/vimfiles.git
mv vimfiles .vim
cp $( dirname "${BASH_SOURCE[0]}" )/gvimrc ~/.gvimrc
cp $( dirname "${BASH_SOURCE[0]}" )/vimrc ~/.vimrc

# init.vim
mkdir ~/.config/nvim
cp $( dirname "${BASH_SOURCE[0]}" )/init.vim ~/.config/nvim/init.vim

# root bash configurations
sudo cp $( dirname "${BASH_SOURCE[0]}" )/bash_profile /root/.bash_profile
sudo cp $( dirname "${BASH_SOURCE[0]}" )/bashrc /root/.bashrc

#=> AUR directory
mkdir ~/Arch
mkdir ~/Arch/AUR

#=> AURs
cd ~/Arch/AUR

# 8192eu-dkms
git clone https://aur.archlinux.org/8192eu-dkms.git
cd 8192eu-dkms
makepkg -sic
cd ..

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

# bat-extras-git
git clone https://aur.archlinux.org/bat-extras-git.git
cd bat-extras-git
makepkg -sic
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

#=> rename /mnt/K8GBDT100 to flash
sudo mv /mnt/K8GBDT100 /mnt/flash

