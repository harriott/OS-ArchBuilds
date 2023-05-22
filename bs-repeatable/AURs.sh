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

# #=> bfg
# gAUR bfg
# nvim -c "silent! /madgag" PKGBUILD
# makepkg -sic  # jre-openjdk

# #=> cheat
# gAUR cheat
# nvim -c "silent! /https:\/\/github.com\/cheat\/cheat" PKGBUILD
# makepkg -sic
# sudo sed -i 's/# st/st/' /etc/cheat/conf.yml  # better colouring

# #=> code-minimap
# gAUR code-minimap
# nvim -c "silent! /https:\/\/github.com\/wfxr\/code-minimap" PKGBUILD
# makepkg -sic

# #=> cpu-x 0 mawk
# gAUR mawk
# nvim -c "silent! /invisible-island.net\/mawk" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x
# gAUR cpu-x
# nvim -c "silent! /thetumultuousunicornofdarkness.github.io\/CPU-X" PKGBUILD
# makepkg -sic
# true

# #=> dict-moby-thesaurus
# gAUR dict-moby-thesaurus
# nvim -c "silent! /www.gutenberg.org\/ebooks\/3202" PKGBUILD
# makepkg -sic
# true

# #=> didyoumean
# # provides  dym
# rustup update
# gAUR didyoumean
# nvim -c "silent! /hisbaan\/didyoumean" PKGBUILD
# makepkg -sic  # takes ages
# true

# #=> fonts - figlet-fonts
# # brings in figlet
# gAUR figlet-fonts
# nvim -c "silent! /ftp.figlet.org" PKGBUILD
# makepkg -sic

# #=> fonts - fontpreview-git
# gAUR fontpreview-git
# nvim -c "silent! /sdushantha" PKGBUILD
# makepkg -sic

# #=> fonts - lohit-fonts
# gAUR lohit-fonts
# nvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

#=> fangfrisch 1 AUR
gAUR python-fangfrisch
nvim -c "silent! /rseichter" PKGBUILD
makepkg -sic
true

# #=> fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer --now

# #=> libstdc++5-bin
# # GNU Standard C++ Library v3
# # Can't recall what I need it for...
# gAUR libstdc++5-bin
# nvim -c "silent! /ftp.de.debian.org" PKGBUILD
# makepkg -sic
# true

# #=> lsix-git
# # for sixels
# gdAUR lsix-git
# nvim -c "silent! /https:\/\/github.com\/hackerb9\/lsix" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola
# gAUR mbrola
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola American English female
# gAUR mbrola-voices-us1
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola British English male
# gAUR mbrola-voices-en1
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

#=> moar 0 (re)install
gAUR moar
nvim -c "silent! /walles" PKGBUILD
makepkg -sic
true

# #=> moar 1 remove
# cd ~/Arch/AUR
# rAUR moar
# sudo pacman -Rs moar

# #=> nordvpn-bin 0 remove countries.dat
# sudo rm /var/lib/nordvpn/data/countries.dat

# #=> nordvpn-bin 1 (re)install
# gAUR nordvpn-bin
# nvim -c "silent! /https:\/\/nordvpn.com\/download\/linux\/" PKGBUILD
# makepkg -sic
# true

# #=> nordvpn-bin 2 configure
# sudo usermod -aG nordvpn jo  # need to re-login
# true
# sudo systemctl enable nordvpnd.service --now
# true

# #=> perl-clone-pp
# # for  perl-data-printer
# gAUR perl-clone-pp
# nvim -c "silent! /NEILB" PKGBUILD
# makepkg -sic
# true

# #=> perl-data-printer
# gAUR perl-data-printer
# nvim -c "silent! /GARU" PKGBUILD
# makepkg -sic
# true

# #=> Samokovarov's jump
# gAUR jump
# nvim -c "silent! /gsamokovarov" PKGBUILD
# makepkg -sic

# #=> shell-color-scripts
# gAUR shell-color-scripts
# nvim -c "silent! /dwt1" PKGBUILD
# makepkg -sic
# true

# #=> tint-tetris
# gAUR tint-tetris
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> tspreed
# gAUR tspreed
# nvim -c "silent! /github.com\/n-ivkovic\/tspreed" PKGBUILD
# makepkg -sic

