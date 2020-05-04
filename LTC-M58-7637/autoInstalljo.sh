#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' autoInstallroot.sh
# script autoInstallroot-$(date "+%y%m%d-%H%M")
# bash <thisScript>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/home/jo/mnt/ArchBuilds
# ARCHBUILDS=/mnt/mnt/ArchBuilds
# ARCHBUILDS=/run/media/jo/K8GBDT100/ArchBuilds
    MACHINE=$ARCHBUILDS/LTC-M58-7637

# #=> * Moto G4
# # plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# sudo dhcpcd enp0s29f7u6  # (assuming jo has sudoer right to dhcpcd)
# ping -c 3 8.8.8.8

#=> * Updates
sudo pacman -Syu

#=> * symlinks
. $ARCHBUILDS/symlinks.sh

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

#=> AURclones
cd ~/Arch/AUR
bash -x $ARCHBUILDS/LTC-M58-7637/AURclones.sh

# #=> AURs 1
# # 8192eu-dkms
# cd ~/Arch/AUR/8192eu-dkms
# makepkg -sic
# cd ~

# # auracle-git
# cd ~/Arch/AUR/auracle-git
# makepkg -sic
# cd ~

# # autojump-git
# cd ~/Arch/AUR/autojump-git
# makepkg -sic
# autojump -h
# cd ~

# # bat-extras-git
# cd ~/Arch/AUR/bat-extras-git
# makepkg -sic
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

# #=> AURs 2
# # Samokovarov's jump
# cd ~/Arch/AUR/jump
# makepkg -sic
# cd ~

# # vim-mediawiki
# cd ~/Arch/AUR/vim-mediawiki
# makepkg -sic
# cd ~

# # vim-simpylfold
# cd ~/Arch/AUR/vim-simpylfold
# makepkg -sic
# cd ~

# # vim Solarized
# cd ~/Arch/AUR/vim-colors-solarized-git
# makepkg -sic
# cd ~

# # vim-undotree
# cd ~/Arch/AUR/vim-undotree
# makepkg -sic
# cd ~

# #=> tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

# #=> AURs 3
# # vim Calendar
# cd ~/Arch/AUR/vim-calendar-git
# makepkg -sic
# cd ~

# # vim LanguageTool
# cd ~/Arch/AUR/vim-languagetool
# makepkg -sic
# cd ~

#=> AURs 4
Event Calendar
cd ~/Arch/AUR/plasma5-applets-eventcalendar
makepkg -sic
cd ~

