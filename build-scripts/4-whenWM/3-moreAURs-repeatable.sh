#!/bin/bash

# AURs that require a WM

# bash $bSc/4-whenWM/3-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  are defined in $Bash/bashrc-console
# softwares that require a WM

#=> clifm 0 (re)install
gAUR clifm
nvim -c "silent! /https:\/\/github.com\/leo-arch\/clifm" PKGBUILD
makepkg -sic
cd /usr/share/clifm/plugins
sudo gcc -o kbgen kbgen.c -lcurses

# #=> clifm 1 remove
# sudo pacman -Rs clifm
# rm -r ~/.config/clifm

# #=> clifm-git
# gdAUR clifm-git
# nvim -c "silent! /https:\/\/github.com\/leo-arch\/clifm" PKGBUILD
# makepkg -sic

# #=> cmus-notify 0 install
# gAUR cmus-notify
# nvim -c "silent! /AntoineGagne" PKGBUILD
# makepkg -sic
# true

# #=> cmus-notify 1 remove
# sudo pacman -Rs cmus-notify

# #=> colorpicker
# gAUR colorpicker
# nvim -c "silent! /Jack12816" PKGBUILD
# makepkg -sic

# #=> dragon-drop
# gAUR dragon-drop
# nvim -c "silent! /mwh\/dragon" PKGBUILD
# makepkg -sic

#=> Dropbox 0 (re)install
gAUR dropbox
nvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
makepkg -sic
true

# #=> Dropbox 1 dropbox-dist folder
# install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dropbox 2 uninstall
# sudo pacman -Rs dropbox

#=> Google Chrome
gAUR google-chrome
nvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

# #=> iscan
# gAUR iscan
# nvim -c "silent! /support.epson.net" PKGBUILD
# makepkg -sic  # takes a long time...
# true

# #=> js-beautify
# gAUR js-beautify
# nvim -c "silent! /registry.npmjs.org\/js-beautify" PKGBUILD
# makepkg -sic
# true

#=> nsxiv
gAUR nsxiv
nvim -c "silent! /https:\/\/codeberg.org\/nsxiv\/nsxiv" PKGBUILD
makepkg -sic
true

# #=> Pacfinder
# gAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

# #=> briss
# gAUR briss
# nvim -c "silent! /sourceforge.net\/projects\/briss" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 0 python-pypdf2
# gAUR python-pypdf2
# nvim -c "silent! /github.com\/py-pdf" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 1 python-pysimplegui
# gAUR python-pysimplegui
# nvim -c "silent! /github.com\/MikeTheWatchGuy\/PySimpleGUI" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 2 pdfcropmargins 0 install
# gAUR pdfcropmargins
# nvim -c "silent! /pypi.org\/project\/pdfCropMargins" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 2 pdfcropmargins 0 remove
# sudo pacman -Rs pdfcropmargins

# #=> PDFsam
# gAUR pdfsam
# nvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic  # choose  jdk-openjdk
# true

# #=> perl-unicode-utf8
# gAUR perl-unicode-utf8
# nvim -c "silent! /metacpan.org" PKGBUILD
# makepkg -sic  # requires  perl-test-fatal
# true

# #=> PhotoCollage
# gAUR photocollage
# nvim -c "silent! /adrienverge" PKGBUILD
# makepkg -sic

# #=> pinta-git 0 install
# gAUR pinta-git
# nvim -c "silent! /github.com\/PintaProject\/Pinta.git" PKGBUILD
# makepkg -sic  # takes a while, using .NET
# true

# #=> pinta-git 0 remove
# sudo pacman -Rs pinta-git

# #=> audio PNMixer
# gAUR pnmixer
# nvim -c "silent! /https:\/\/github.com\/nicklan\/pnmixer" PKGBUILD
# makepkg -sic
# # (in Openbox)  now  Multimedia > PNMixer > Preferences > View > Draw Volume Meter on Tray Icon
# true

# #=> pscircle-git
# gAUR pscircle-git
# nvim -c "silent! /mildlyparallel" PKGBUILD
# makepkg -sic

# #=> qpdfview 0 Adam Reichold's public key
# gpg --recv-keys 1F521FF0F87E9E1CDE46B8A9F4928C4DD24D4DF8

# #=> qpdfview 1 (re)install
# gAUR qpdfview
# nvim -c "silent! /launchpad" PKGBUILD
# makepkg -sic  # takes a long time...

# #=> Spotify 0 signing key 0 import
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
# gpg -k 5E3C45D7B312C643

# #=> Spotify 0 signing key 1 delete
# # gpg -k | xcol 5E3C45D7B312C643 spotify
# gpg --delete-key 5E3C45D7B312C643

# #=> Spotify AUR 1 (re)install
# gAUR spotify
# nvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
# makepkg -sic

# #=> Spotify AUR 2 remove
# sudo pacman -Rs spotify

# #=> urlview
# # creates a numbered list of url's in a resource
# gAUR urlview
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> verbiste
# gAUR verbiste
# nvim -c "silent! /perso.b2b2c.ca\/\~sarrazip\/dev" PKGBUILD
# makepkg -sic

# #=> yj-git
# gAUR yj-git
# nvim -c "silent! /github.com\/sclevine\/yj" PKGBUILD
# makepkg -sic

#=> Zoom
gAUR zoom
nvim -c "silent! /zoom.us" PKGBUILD
makepkg -sic

