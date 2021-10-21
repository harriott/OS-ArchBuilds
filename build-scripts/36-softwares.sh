#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# AUR development packages:
#  gctm  is defined in $ARCHBUILDS/jo/Bash/bashrc-console
#  use  $ARCHBUILDS/build-scripts/27-remakeAURdevs.sh  to later update them

# rAUR  is defined in $Bash/bashrc-console

# #=> bat-extras-git
# cd ~/Arch/AURdev-clone
# rAUR bat-extras-git
# git clone https://aur.archlinux.org/bat-extras-git.git
# gctm bat-extras-git
# gvim -c "silent! /eth-p" PKGBUILD
# makepkg -sic
# true

# #=> bfg
# cd ~/Arch/AUR
# rAUR bfg
# git clone https://aur.archlinux.org/bfg.git
# cd bfg
# gvim PKGBUILD
# makepkg -sic

# #=> bpytop
# # supersedes  Bashtop
# cd ~/Arch/AUR
# rAUR bpytop
# git clone https://aur.archlinux.org/bpytop.git
# cd bpytop
# gvim PKGBUILD
# makepkg -sic

# #=> cht.sh-git
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/cht.sh-git.git
# gctm cht.sh-git
# gvim PKGBUILD
# makepkg -sic

# #=> clamav-unofficial-sigs 0 install
# cd ~/Arch/AURdev-clone
# rAUR clamav-unofficial-sigs
# git clone https://aur.archlinux.org/clamav-unofficial-sigs.git
# cd clamav-unofficial-sigs
# gvim -c "silent! /extremeshok" PKGBUILD
# makepkg -sic
# sudo systemctl enable clamav-unofficial-sigs.timer

# #=> clamav-unofficial-sigs 1 remove
# sudo systemctl disable clamav-unofficial-sigs.timer
# sudo pacman -Rs clamav-unofficial-sigs

# #=> cmus-notify
# cd ~/Arch/AUR
# rAUR cmus-notify
# git clone https://aur.archlinux.org/cmus-notify.git
# cd cmus-notify
# gvim -c "silent! /AntoineGagne" PKGBUILD
# makepkg -sic
# true

# #=> colorpicker
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/colorpicker.git
# cd colorpicker
# gvim PKGBUILD
# makepkg -sic

# #=> diskonaut
# cd ~/Arch/AUR
# rAUR diskonaut
# git clone https://aur.archlinux.org/diskonaut.git
# cd diskonaut
# gvim -c "silent! /imsnif" PKGBUILD
# makepkg -sic
# true

# #=> Dropbox 0 (re)install
# # only once there's a browser, and preferably after LastPass
# cd ~/Arch/AUR
# rAUR dropbox
# git clone https://aur.archlinux.org/dropbox.git
# cd dropbox
# gvim -c "silent! /https:\/\/clientupdates.dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
# makepkg -sic
# true

# #=> Dropbox 1 dropbox-dist folder
# install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dust
# # (after Rust Toolchain)
# cd ~/Arch/AUR
# rAUR dust
# git clone https://aur.archlinux.org/dust.git
# cd dust
# gvim -c "silent! /https:\/\/github.com\/bootandy\/" PKGBUILD
# makepkg -sic

# #=> ffmpeg
# sudo pacman -S ffmpeg

# #=> fonts - figlet-fonts
# # brings in figlet
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/figlet-fonts.git
# cd figlet-fonts
# gvim PKGBUILD
# makepkg -sic

# #=> fonts - fontpreview-git
# cd ~/Arch/AURdev-clone
# rAUR fontpreview-git
# git clone https://aur.archlinux.org/fontpreview-git.git
# gctm fontpreview-git
# gvim PKGBUILD
# makepkg -sic

# #=> fonts - gnu-free-fonts
# sudo pacman -S gnu-free-fonts

# #=> fonts - lohit-fonts
# cd ~/Arch/AUR
# rAUR lohit-fonts
# git clone https://aur.archlinux.org/lohit-fonts.git
# cd lohit-fonts
# gvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

# #=> fonts - ttf-dejavu
# sudo pacman -S ttf-dejavu

# #=> Falkon
# sudo pacman -S falkon

# #=> Firefox
# sudo pacman -S firefox

# #=> gifski
# sudo pacman -S gifski  # (for making animated GIFs)

#=> Google Chrome
cd ~/Arch/AUR
rAUR google-chrome
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
gvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

# #=> gst123
# cd ~/Arch/AUR
# rAUR gst123
# git clone https://aur.archlinux.org/gst123.git
# cd gst123
# gvim PKGBUILD
# makepkg -sic
# true

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

# #=> gucharmap
# sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

# #=> GraphicsMagick
# sudo pacman -S graphicsmagick

# #=> HPLIP
# sudo pacman -S hplip

# #=> java-commons-lang
# sudo pacman -S java-commons-lang  # (for pdftk's functions)

# #=> keepassxc
# sudo pacman -S keepassxc

# #=> LanguageTool
# sudo pacman -S languagetool

# #=> libappindicator-gtk3
# sudo pacman -S libappindicator-gtk3  # didn't help with non-captured Dropbox tray icon...

# #=> libgphoto2
# sudo pacman -S gphoto2  # brings in  libgphoto2  & gives cli access to it
# sudo pacman -S gvfs-gphoto2  # for GNOME Files integration

# #=> libva-utils
# sudo pacman -S libva-utils

# #=> mesa-demos
# sudo pacman -S mesa-demos

# #=> mimeo
# cd ~/Arch/AUR
# rAUR mimeo
# git clone https://aur.archlinux.org/mimeo.git
# cd mimeo
# gvim PKGBUILD
# makepkg -sic
# true

# #=> moar remove
# cd ~/Arch/AUR
# rAUR moar
# sudo pacman -Rs moar

# #=> moar-git 0 remove
# cd ~/Arch/AUR
# rAUR moar-git
# sudo pacman -Rs moar-git

# #=> moar-git 1 install
# cd ~/Arch/AURdev-clone
# rAUR moar-git
# git clone https://aur.archlinux.org/moar-git.git
# gctm moar-git
# gvim -c "silent! /walles" PKGBUILD
# makepkg -sic
# true

# #=> msmtprc
# cp -f $GNULE/msmtpConfig-backup ~/.msmtprc
# chmod 600 ~/.msmtprc

# #=> MusicBrainz Picard
# sudo pacman -S chromaprint picard
# # Options > Options > [ General > Check for updates  offticked
# #   Fingerprinting > Fingerprint calculator > /usr/bin/fpcalc
# #   User Interface > Show a quit confirmation  off ]
# true

# #=> nodejs-mapscii 0 install
# cd ~/Arch/AUR
# rAUR nodejs-mapscii
# git clone https://aur.archlinux.org/nodejs-mapscii.git
# cd nodejs-mapscii
# gvim PKGBUILD
# makepkg -sic
# true

# #=> nodejs-mapscii 1 remove
# sudo pacman -Rs nodejs-mapscii

# #=> nordvpn-bin 0 install
# cd ~/Arch/AUR
# rAUR nordvpn-bin
# git clone https://aur.archlinux.org/nordvpn-bin.git
# cd nordvpn-bin
# gvim -c "silent! /nordvpn" PKGBUILD
# makepkg -sic
# true

# #=> nordvpn-bin 1 configure
# sudo usermod -aG nordvpn jo  # need to re-login
# true
# sudo systemctl enable nordvpnd.service --now
# true

# #=> OBS Studio 0 install
# sudo pacman -S obs-studio

# #=> OBS Studio 0 remove
# sudo pacman -Rs obs-studio
# rm -r ~/.config/obs-studio

# #=> OpenShot
# sudo pacman -S openshot

# #=> PDFsam
# # depends on  jdk-openjdk
# cd ~/Arch/AUR
# rAUR pdfsam
# git clone https://aur.archlinux.org/pdfsam.git
# cd pdfsam
# gvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic

# #=> pdftk
# sudo pacman -S pdftk

# #=> peek
# sudo pacman -S peek  # (GIF Screen Recorder)

# #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs

# #=> perl-clone-pp
#  for  perl-data-printer
# cd ~/Arch/AUR
# rAUR perl-clone-pp
# git clone https://aur.archlinux.org/perl-clone-pp.git
# cd perl-clone-pp
# gvim -c "silent! /NEILB" PKGBUILD
# makepkg -sic
# true

# #=> perl-data-printer
# cd ~/Arch/AUR
# rAUR perl-data-printer
# git clone https://aur.archlinux.org/perl-data-printer.git
# cd perl-data-printer
# gvim -c "silent! /GARU" PKGBUILD
# makepkg -sic
# true

# #=> perl-image-exiftool
# sudo pacman -S perl-image-exiftool

# #=> PhotoCollage
# cd ~/Arch/AUR
# rAUR photocollage
# git clone https://aur.archlinux.org/photocollage.git
# cd photocollage
# gvim PKGBUILD
# makepkg -sic

# #=> Pinta
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pinta.git
# cd pinta
# gvim PKGBUILD
# makepkg -sic

# #=> pip
# sudo pacman -S python-pip

# #=> pscircle-git
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/pscircle-git.git
# gctm pscircle-git
# gvim PKGBUILD
# makepkg -sic

# #=> Python 2
# sudo pacman -S python2  # needed for  oauth2.py

# #=> python-fangfrisch 1 AUR
# cd ~/Arch/AUR
# rAUR python-fangfrisch
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# gvim -c "silent! /rseichter" PKGBUILD
# makepkg -sic
# true

# #=> python-fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer --now

# #=> Quod Libet
# sudo pacman -S quodlibet

# #=> Samokovarov's jump
# cd ~/Arch/AUR
# rAUR jump
# git clone https://aur.archlinux.org/jump.git
# cd jump
# gvim PKGBUILD
# makepkg -sic

# #=> Spotify
# cd ~/Arch/AUR
# rAUR spotify
# git clone https://aur.archlinux.org/spotify.git
# cd spotify
# gvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
# makepkg -sic

# #=> sqlitebrowser
# sudo pacman -S sqlitebrowser

# #=> tint-tetris
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/tint-tetris.git
# cd tint-tetris
# gvim PKGBUILD
# makepkg -sic

# #=> tint2 0 remove
# sudo pacman -Rs tint2

# #=> tint2-git
# cd ~/Arch/AUR
# rAUR tint2-git
# git clone https://aur.archlinux.org/tint2-git.git
# cd tint2-git
# gvim -c "silent! /tint2.git" PKGBUILD
# makepkg -sic

# #=> tspreed
# cd ~/Arch/AUR
# rAUR tspreed
# git clone https://aur.archlinux.org/tspreed.git
# cd tspreed
# gvim -c "silent! /n-ivkovic" PKGBUILD
# makepkg -sic
# true

# #=> ttf-croscore
# sudo pacman -S ttf-croscore

# #=> Vimiv
# sudo pacman -S vimiv

# #=> xbindkeys
# sudo pacman -S xbindkeys

# #=> youtube-dl
# sudo pacman -S youtube-dl

# #=> Zoom
# cd ~/Arch/AUR
# rAUR zoom
# git clone https://aur.archlinux.org/zoom.git
# cd zoom
# gvim -c "silent! /zoom.us" PKGBUILD
# makepkg -sic

