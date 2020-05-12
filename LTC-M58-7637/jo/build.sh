#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

# as root  bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 enp0s29f7u6
# # Moto G4 plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# sudo dhcpcd enp0s29f7u6  # (assuming jo has sudoer right to dhcpcd)
# ping -c 3 8.8.8.8

# #=> 0 environment variables
# # if  ~/.xinitrc  hasn't been run

# ARCHBUILDS=/home/jo/Dropbox/JH/IT_stack/onGitHub/ArchBuilds
#     MACHINE=$ARCHBUILDS/LTC-M58-7637; echo $MACHINE

# #=> 0 Updates
# sudo pacman -Syu
# # reboot if kernel updated !
# true
# auracle sync
# true

# #=> 1 build

# #==> broot
# broot  # to load  br

# #==> SSH keys
# mkdir ~/.ssh
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram ~/.ssh/id_rsa
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram.pub ~/.ssh/id_rsa.pub

# ssh/id_rsa permission
# chmod 600 ~/.ssh/id_rsa

# #==> vims
# # gVim
# cd ~
# git clone git@github.com:harriott/vimfiles.git
# mv vimfiles .vim

# # neovim
# mkdir ~/.config/nvim

# #=> 2 AUR 0 - make AUR directory
# mkdir ~/Arch
# mkdir ~/Arch/AUR

# #=> 2 AUR 1 preparations

# # #==> Dropbox public key
# # gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# # #==> Dust - Rust Toolchain
# # # 1 rustup
# # sudo pacman -S rustup

# # # 2 Rust Toolchain
# # rustup toolchain install stable

# #=> 2 AUR 2 AURs

# #==> 8192eu-dkms - install
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# xdg-open PKGBUILD
# makepkg -sic
# cd ~
# # reboot !
# true

# #==> auracle-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/auracle-git.git
# cd auracle-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> bat-extras-git
# cd ~/Arch/AUR
# sudo rm -r bat-extras-git
# git clone https://aur.archlinux.org/bat-extras-git.git
# cd bat-extras-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Dropbox
# cd ~/Arch/AUR
# sudo rm -r dropbox
# git clone https://aur.archlinux.org/dropbox.git
# cd dropbox
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Dust
# # (after Rust Toolchain)
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/dust.git
# cd dust
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Event Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/plasma5-applets-eventcalendar.git
# cd plasma5-applets-eventcalendar
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Fangfrisch
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> moar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/moar.git
# cd moar
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> old & unwanted

# #===> 8192eu-dkms - remove
# sudo pacman -Rs 8192eu-dkms
# reboot !
# true

# #===> rtl8192eu
# cd ~/Arch/AUR
# sudo rm -r rtl8192eu
# git clone https://aur.archlinux.org/rtl8192eu.git
# cd rtl8192eu
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Samokovarov's jump
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/jump.git
# cd jump
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-calendar-git.git
# cd vim-calendar-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim LanguageTool
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-languagetool.git
# cd vim-languagetool
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-mediawiki
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-mediawiki.git
# cd vim-mediawiki
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-simpylfold
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-simpylfold.git
# cd vim-simpylfold
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim Solarized
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-colors-solarized-git.git
# cd vim-colors-solarized-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-undotree
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-undotree.git
# cd vim-undotree
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> xbindkeys
# # for mouse middle click
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/xbindkeys.git
# cd xbindkeys
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 2 AUR 3 settings

# #==> 8192eu - blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

# #==> Fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer

# #=> 2 rsnapshot conf, for first run
# # grab the default
# cp /etc/rsnapshot.conf $MACHINE/etc/k5c-rsnapshot.conf
# cp /etc/rsnapshot.conf $MACHINE/etc/rsnapshot.conf

# # my configuration
# mkdir /mnt/HD103SJ/rsnapshot
sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

# # check
# rsnapshot configtest
# # simulate first run
# rsnapshot -t hourly
# # now need to  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

# #=> 2 symlinks
# . $ARCHBUILDS/userSymlinks/jo.sh

# #=> 2 tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

