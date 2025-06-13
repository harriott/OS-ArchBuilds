#!/bin/bash

# bash $OSAB/bs-repeatable/AURs.sh

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $AjB/bashrc-console

# #=> ansifilter
# gAUR ansifilter
# nvim -c "silent! /www.andre-simon.de" PKGBUILD
# makepkg -sic
# true

# #=> ansiweather
# gAUR ansiweather
# nvim -c "silent! /fcambus" PKGBUILD
# makepkg -sic
# true

# #=> bfg 0 (re)install
# gAUR bfg
# nvim -c "silent! /madgag" PKGBUILD
# makepkg -sic  # jre-openjdk

# #=> bfg 1 remove
# rAUR ~/Arch/AUR/bfg
# sudo pacman -Rs bfg

# #=> cheat
# gAUR cheat
# nvim -c "silent! /https:\/\/github.com\/cheat\/cheatsheets\.git" PKGBUILD
# makepkg -sic

# #=> code-minimap 0 (re)install
# gAUR code-minimap
# nvim -c "silent! /https:\/\/github.com\/wfxr\/code-minimap" PKGBUILD
# makepkg -sic
# true

# #=> code-minimap 1 remove
# cd ~/Arch/AUR
# rAUR code-minimap
# sudo pacman -Rs code-minimap

# #=> code-minimap-bin 0 install
# # /usr/share/bash-completion/completions/code-minimap.bash
# gAUR code-minimap-bin
# nvim -c "silent! /https:\/\/github.com\/wfxr\/code-minimap" PKGBUILD
# makepkg -sic

# #=> code-minimap-bin 1 remove
# cd ~/Arch/AUR
# rAUR code-minimap-bin
# sudo pacman -Rs code-minimap-bin

# #=> cpu-x 0 mawk
# gAUR mawk
# nvim -c "silent! /invisible-island.net\/mawk" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 0 install
# gAUR cpu-x
# nvim -c "silent! /thetumultuousunicornofdarkness.github.io\/CPU-X" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 1 remove
# sudo pacman -Rs cpu-x

# #=> cyrus-sasl-xoauth2-git 0 install
# gAUR cyrus-sasl-xoauth2-git
# nvim -c "silent! /github.com\/moriyoshi" PKGBUILD
# makepkg -sic
# true

# #=> cyrus-sasl-xoauth2-git 1 remove
# sudo pacman -Rs cyrus-sasl-xoauth2-git cyrus-sasl-xoauth2-git-debug

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

# #=> downgrade
# gAUR downgrade
# nvim -c "silent! /github.com\/archlinux-downgrade" PKGBUILD
# makepkg -sic
# true

# #=> fonts - figlet-fonts
# # brings in figlet
# gAUR figlet-fonts
# nvim -c "silent! /ftp.figlet.org" PKGBUILD
# makepkg -sic

# #=> fonts - fontpreview-git
# gdAUR fontpreview-git
# nvim -c "silent! /sdushantha" PKGBUILD
# makepkg -sic

# #=> fonts - lohit-fonts
# gAUR lohit-fonts
# nvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

# #=> fangfrisch 1 AUR
# gAUR python-fangfrisch
# nvim -c "silent! /rseichter" PKGBUILD
# makepkg -sic
# true

# #=> fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer --now

# #=> gsamokovarov jump 0 install
# gAUR jump
# nvim -c "silent! /gsamokovarov" PKGBUILD
# makepkg -sic

# #=> gsamokovarov jump 1 remove
# cd ~/Arch/AUR
# rAUR jump
# sudo pacman -Rs jump
# true

# #=> julia-bin 0 execstack
# # for julia-bin
# gAUR execstack
# nvim -c "silent! /jwilk-mirrors\/prelink" PKGBUILD
# makepkg -sic
# true

# #=> julia-bin 1 install
# # for sixels
# gAUR julia-bin
# nvim -c "silent! /julialang-s3.julialang.org" PKGBUILD
# makepkg -sic
# true

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

# #=> nordvpn-bin 3 remove
# cd ~/Arch/AUR
# rAUR nordvpn-bin
# sudo pacman -Rs nordvpn-bin

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

# #=> powershell-bin
# gAUR powershell-bin
# nvim -c "silent! /github.com\/Powershell\/Powershell" PKGBUILD
# makepkg -sic
# true

# #=> rdrview-git
# gdAUR rdrview-git
# nvim -c "silent! /https:\/\/github.com\/eafer\/rdrview" PKGBUILD
# makepkg -sic
# true

# #=> shell-color-scripts-git
# gdAUR shell-color-scripts-git
# nvim -c "silent! /dwt1" PKGBUILD
# makepkg -sic
# true

# #=> tint-tetris
# gAUR tint-tetris
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> tty-clock
# gAUR tty-clock
# nvim -c "silent! /github.com\/xorg62" PKGBUILD
# makepkg -sic

# #=> ncurses-git
# # prefer the core package
# gdAUR ncurses-git
# nvim -c "silent! /https:\/\/github.com\/ThomasDickey\/ncurses-snapshots" PKGBUILD
# makepkg -sic  # takes a long time...
# true

# #=> tspreed
# gAUR tspreed
# nvim -c "silent! /github.com\/n-ivkovic\/tspreed" PKGBUILD
# makepkg -sic

# #=> vale
# # Vale, for  ALE
# gAUR vale
# nvim -c "silent! /errata-ai\/vale" PKGBUILD
# makepkg -sic
# true

