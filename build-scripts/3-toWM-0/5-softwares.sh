#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

# #=> ansiweather
# gAUR ansiweather
# nvim -c "silent! /fcambus" PKGBUILD
# makepkg -sic
# true

#=> bat
sudo pacman -S bat  # for  fzf --preview

#=> bfg
gAUR bfg
nvim -c "silent! /madgag" PKGBUILD
makepkg -sic  # jre-openjdk

#=> bpytop
# supersedes  Bashtop
sudo pacman -S bpytop

#=> cheat
gdAUR cheat
nvim -c "silent! /https:\/\/github.com\/cheat\/cheat" PKGBUILD
makepkg -sic
sudo sed -i 's/# st/st/' /etc/cheat/conf.yml  # better colouring

#=> CUPS service
sudo pacman -S cups
sudo systemctl enable cups.service --now

#=> devtools
# mkdir /mnt/SD480GSSDPlus/chroot
sudo pacman -S devtools

#=> didyoumean
# provides  dym
rustup update
gAUR didyoumean
nvim -c "silent! /hisbaan\/didyoumean" PKGBUILD
makepkg -sic  # takes ages
true

#=> diskonaut
gAUR diskonaut
nvim -c "silent! /imsnif" PKGBUILD
makepkg -sic  # takes a long time
true

#=> diskus
sudo pacman -S diskus

#=> dua-cli
sudo pacman -S dua-cli

#=> Dust
# (after Rust Toolchain)
sudo pacman -S dust

#=> Emacs
sudo pacman -S emacs

#=> fonts - figlet-fonts
# brings in figlet
gAUR figlet-fonts
nvim -c "silent! /ftp.figlet.org" PKGBUILD
makepkg -sic

#=> fonts - fontpreview-git
gAUR fontpreview-git
nvim -c "silent! /sdushantha" PKGBUILD
makepkg -sic

#=> fonts - gnu-free-fonts
sudo pacman -S gnu-free-fonts

#=> fonts - lohit-fonts
gAUR lohit-fonts
nvim -c "silent! /_fhosted" PKGBUILD
makepkg -sic

#=> fonts - ttf-dejavu
sudo pacman -S ttf-dejavu

#=> fangfrisch 1 AUR
gAUR python-fangfrisch
nvim -c "silent! /rseichter" PKGBUILD
makepkg -sic
true

#=> fangfrisch 2 settings
# 1 create database structure
sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# 2 enable systemd timer
sudo systemctl enable fangfrisch.timer --now

#=> gdu
sudo pacman -S gdu

#=> libstdc++5-bin
# GNU Standard C++ Library v3
# Can't recall what I need it for...
gAUR libstdc++5-bin
nvim -c "silent! /ftp.de.debian.org" PKGBUILD
makepkg -sic
true

#=> libsixel
sudo pacman -S libsixel  # for  sixel  graphicsr

# #=> libva-utils - for sbMb
# sudo pacman -S libva-utils  # provides  vainfo, for  VA-API checking

#=> lsix-git
# for sixels
gAUR lsix-git
nvim -c "silent! /https:\/\/github.com\/hackerb9\/lsix" PKGBUILD
makepkg -sic
true

#=> Mbrola
gAUR mbrola
nvim -c "silent! /numediart" PKGBUILD
makepkg -sic
true

#=> Mbrola American English female
gAUR mbrola-voices-us1
nvim -c "silent! /numediart" PKGBUILD
makepkg -sic
true

#=> Mbrola British English male
gAUR mbrola-voices-en1
nvim -c "silent! /numediart" PKGBUILD
makepkg -sic
true

#=> moar 0 install
gAUR moar
nvim -c "silent! /walles" PKGBUILD
makepkg -sic
true

# #=> moar 1 remove
# cd ~/Arch/AUR
# rAUR moar
# sudo pacman -Rs moar

#=> nordvpn-bin 0 (re)install
gAUR nordvpn-bin
nvim -c "silent! /https:\/\/nordvpn.com\/download\/linux\/" PKGBUILD
makepkg -sic
true

#=> nordvpn-bin 1 configure
sudo usermod -aG nordvpn jo  # need to re-login
true
sudo systemctl enable nordvpnd.service --now
true

#=> noto-fonts-cjk
# for  $MD4PDF/GNULinux/md4pdf.sh
sudo pacman -S noto-fonts-cjk
true

#=> npm 0 configure npm-global
mkdir ~/.npm-global
npm config set prefix=$HOME/.npm-global

#=> npm 1 cspell
npm install -g cspell

#=> Perl modules for JSON
sudo pacman -S perl-json perl-json-parse perl-json-xs

#=> perl-clone-pp
# for  perl-data-printer
gAUR perl-clone-pp
nvim -c "silent! /NEILB" PKGBUILD
makepkg -sic
true

#=> perl-data-printer
gAUR perl-data-printer
nvim -c "silent! /GARU" PKGBUILD
makepkg -sic
true

#=> pip
sudo pacman -S python-pip

#=> Samokovarov's jump
gAUR jump
nvim -c "silent! /gsamokovarov" PKGBUILD
makepkg -sic

#=> shell-color-scripts
gAUR shell-color-scripts
nvim -c "silent! /dwt1" PKGBUILD
makepkg -sic
true

#=> Solaar
# for  Logitech Wireless Mouse M525
sudo pacman -S solaar
sudo groupadd plugdev
sudo usermod -aG plugdev jo  # need to re-login

#=> tint-tetris
gAUR tint-tetris
nvim -c "silent! /debian" PKGBUILD
makepkg -sic

#=> tspreed
gAUR tspreed
nvim -c "silent! /n-ivkovic" PKGBUILD
makepkg -sic
true

#=> ttf-croscore
sudo pacman -S ttf-croscore

#=> vorbis-tools
# for  oggenc
sudo pacman -S vorbis-tools

#=> whipper
sudo pacman -S whipper

#=> yt-dlp
sudo pacman -S yt-dlp

