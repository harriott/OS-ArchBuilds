#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> * Moto G4
# # plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# sudo dhcpcd enp0s29f7u6  # (assuming jo has sudoer right to dhcpcd)
# ping -c 3 8.8.8.8

#=> * Updates
sudo pacman -Syu

# #=> before X
# # broot
# sudo pacman -S broot
# broot  # to load  br

# # SSH keys
# mkdir ~/.ssh
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram ~/.ssh/id_rsa
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram.pub ~/.ssh/id_rsa.pub

# # now try  startx

# #=> Bash configurations
# cp /run/media/jo/K8GBDT100/bash_profile ~/.bash_profile
# cp /run/media/jo/K8GBDT100/bashrc ~/.bashrc
# cp /run/media/jo/K8GBDT100/bashrc-console ~/.bashrc-console
# cp /run/media/jo/K8GBDT100/bashrc-files ~/.bashrc-files

# #=> xinitrc
# # place xinitrc
# cp /run/media/jo/K8GBDT100/xinitrc ~/.xinitrc

# #=> ssh/id_rsa permission fix
# chmod 600 ~/.ssh/id_rsa

# #=> vim 1
# # gVim
# cd ~
# git clone git@github.com:harriott/vimfiles.git
# mv vimfiles .vim

# #=> vim 2
# cp /run/media/jo/K8GBDT100/gvimrc ~/.gvimrc
# cp /run/media/jo/K8GBDT100/vimrc ~/.vimrc

# # init.vim
# mkdir ~/.config/nvim
# cp /run/media/jo/K8GBDT100/init.vim ~/.config/nvim/init.vim

# #=> AUR directory
# mkdir ~/Arch
# mkdir ~/Arch/AUR

# #=> AURs
# cd ~/Arch/AUR
# bash -x /run/media/jo/K8GBDT100/AURclones.sh

# # 8192eu-dkms
# cd 8192eu-dkms
# makepkg -sic
# cd ..

# # auracle-git
# cd auracle-git
# makepkg -sic
# cd ..

# # autojump-git
# cd autojump-git
# makepkg -sic
# autojump -h
# cd ..

# # bat-extras-git
# cd bat-extras-git
# makepkg -sic
# cd ..

# cd ~

# #=> Dropbox
# # 1 Dropbox public key
# gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# # 2 Dropbox
# cd ~/Arch/AUR/dropbox
# makepkg -sic
# cd ~

# #=> Dust
# # 1 rustup

# # 2 Rust Toolchain
# rustup toolchain install stable

# # 3 Dust
# cd ~/Arch/AUR/dust
# makepkg -sic
# cd ~

# #=> Fangfrisch
# # 1 install Fangfrisch
# cd ~/Arch/AUR/python-fangfrisch
# makepkg -sic
# cd ~

# # 2 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 3 enable systemd timer
# sudo systemctl enable fangfrisch.timer

# #=> moar
# cd ~/Arch/AUR/moar
# makepkg -sic
# cd ~

