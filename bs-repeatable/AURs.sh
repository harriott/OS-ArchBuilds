#!/bin/bash

# bash $OSAB/bs-repeatable/AURs.sh

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# trzAUR  trzAURd  rAUR  are defined in $AjB/bashrc-console

# #=> cpu-x 0 mawk
# trzAUR mawk
# nvim -c "silent! /invisible-island.net\/mawk" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 0 install
# trzAUR cpu-x
# nvim -c "silent! /thetumultuousunicornofdarkness.github.io\/CPU-X" PKGBUILD
# makepkg -sic
# true

# #=> cpu-x 1 cpu-x 1 remove
# sudo pacman -Rs cpu-x

# #=> fonts - fontpreview-git
# trzAURd fontpreview-git
# nvim -c "silent! /sdushantha" PKGBUILD
# makepkg -sic

# #=> fonts - lohit-fonts
# trzAUR lohit-fonts
# nvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

# #=> fonts - ttf-poppins
# trzAUR ttf-poppins
# nvim -c "silent! /github.com\/itfoundry\/poppins" PKGBUILD
# makepkg -sic
# true

# #=> julia-bin 0 execstack
# # for julia-bin
# trzAUR execstack
# nvim -c "silent! /jwilk-mirrors\/prelink" PKGBUILD
# makepkg -sic
# true

# #=> julia-bin 1 install
# # for sixels
# trzAUR julia-bin
# nvim -c "silent! /julialang-s3.julialang.org" PKGBUILD
# makepkg -sic
# true

# #=> kittypack
# trzAUR kittypack
# nvim -c "silent! /pkgname=kittypack" PKGBUILD
# makepkg -sic
# true

# #=> lazyjournal
# trzAUR lazyjournal
# nvim -c "silent! /github.com\/Lifailon\/lazyjournal" PKGBUILD
# makepkg -sic
# true

# #=> librespeed-cli
# trzAUR librespeed-cli
# nvim -c "silent! /github.com\/librespeed\/speedtest" PKGBUILD
# makepkg -sic
# true

# #=> libstdc++5-bin
# # GNU Standard C++ Library v3
# # Can't recall what I need it for...
# trzAUR libstdc++5-bin
# nvim -c "silent! /ftp.de.debian.org" PKGBUILD
# makepkg -sic
# true

# #=> lsix-git
# # for sixels
# trzAURd lsix-git
# nvim -c "silent! /https:\/\/github.com\/hackerb9\/lsix" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola
# trzAUR mbrola
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola American English female
# trzAUR mbrola-voices-us1
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

# #=> Mbrola British English male
# trzAUR mbrola-voices-en1
# nvim -c "silent! /numediart" PKGBUILD
# makepkg -sic
# true

#=> nbfc-linux
# fan control for  HPEB840G3x
trzAUR nbfc-linux
nvim -c "silent! /github.com\/nbfc-linux\/nbfc-linux" PKGBUILD
makepkg -sic
true

# #=> nordvpn-bin 0 remove countries.dat
# sudo rm /var/lib/nordvpn/data/countries.dat

# #=> nordvpn-bin 1 (re)install
# trzAUR nordvpn-bin
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
# trzAUR perl-clone-pp
# nvim -c "silent! /NEILB" PKGBUILD
# makepkg -sic
# true

# #=> perl-data-printer
# trzAUR perl-data-printer
# nvim -c "silent! /GARU" PKGBUILD
# makepkg -sic
# true

# #=> powershell-bin
# trzAUR powershell-bin
# nvim -c "silent! /github.com\/Powershell\/Powershell" PKGBUILD
# makepkg -sic
# true

# #=> rainbow
# trzAURd rainbow
# nvim -c "silent! /pkgname=rainbow" PKGBUILD
# makepkg -sic
# true

# #=> Raku 0 moarvm
# # needs Will Coleda's key
# # for  nqp
# trzAURd moarvm
# nvim -c "silent! /moarvm.com\/releases\/MoarVM" PKGBUILD
# makepkg -sic  # loads of output
# true

# #=> Raku 1 nqp
# # for  rakudo
# trzAURd nqp
# nvim -c "silent! /github.com\/Raku" PKGBUILD
# makepkg -sic  # loads of output
# true

# #=> Raku 2 rakudo
# # qfter  nqp
# trzAURd rakudo
# nvim -c "silent! /rakudo.org\/dl" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> rdrview-git
# trzAURd rdrview-git
# nvim -c "silent! /https:\/\/github.com\/eafer\/rdrview" PKGBUILD
# makepkg -sic
# true

# #=> riffdiff
# trzAURd riffdiff
# nvim -c "silent! /pkgname=riffdiff" PKGBUILD
# makepkg -sic
# true

# #=> shell-color-scripts-git
# trzAURd shell-color-scripts-git
# nvim -c "silent! /dwt1" PKGBUILD
# makepkg -sic
# true

# #=> sysz
# trzAUR sysz
# nvim -c "silent! /joehillen\/sysz" PKGBUILD
# makepkg -sic

# #=> tint-tetris
# trzAUR tint-tetris
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> tty-clock
# trzAUR tty-clock
# nvim -c "silent! /github.com\/xorg62" PKGBUILD
# makepkg -sic

# #=> ncurses-git
# # prefer the core package
# trzAURd ncurses-git
# nvim -c "silent! /https:\/\/github.com\/ThomasDickey\/ncurses-snapshots" PKGBUILD
# makepkg -sic  # takes a long time...
# true

# #=> tspreed
# trzAUR tspreed
# nvim -c "silent! /github.com\/n-ivkovic\/tspreed" PKGBUILD
# makepkg -sic

# #=> vale
# # Vale, for  ALE
# trzAUR vale
# nvim -c "silent! /errata-ai\/vale" PKGBUILD
# makepkg -sic
# true

#=> yay-bin
trzAUR yay-bin
nvim -c "silent! /github.com\/Jguer\/yay\/releases\/download\/v" PKGBUILD
makepkg -sic
true

