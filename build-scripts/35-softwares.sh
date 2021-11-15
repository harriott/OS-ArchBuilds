#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# AUR development packages:
#  gctm  is defined in $Bash/bashrc-console
#  use  $ARCHBUILDS/build-scripts/27-remakeAURdevs.sh  to later update them

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

# #=> bat-extras-git
# gdAUR bat-extras-git
# gvim -c "silent! /eth-p" PKGBUILD
# makepkg -sic
# true

# #=> bfg
# gAUR bfg
# gvim PKGBUILD
# gvim -c "silent! /madgag" PKGBUILD
# makepkg -sic  # jre-openjdk

#=> bpytop
# supersedes  Bashtop
sudo pacman -S bpytop

#=> cht.sh-git
gdAUR cht.sh-git
gvim -c "silent! /chubin" PKGBUILD
makepkg -sic

# #=> clamav-unofficial-sigs 0 install
# gdAUR clamav-unofficial-sigs
# gvim -c "silent! /extremeshok" PKGBUILD
# makepkg -sic
# sudo systemctl enable clamav-unofficial-sigs.timer

# #=> clamav-unofficial-sigs 1 remove
# sudo systemctl disable clamav-unofficial-sigs.timer
# sudo pacman -Rs clamav-unofficial-sigs

#=> cmus-notify
gAUR cmus-notify
gvim -c "silent! /AntoineGagne" PKGBUILD
makepkg -sic
true

#=> colorpicker
gAUR colorpicker
gvim -c "silent! /Jack12816" PKGBUILD
makepkg -sic

#=> devtools
sudo pacman -S devtools
# mkdir /mnt/SD480GSSDPlus/chroot

#=> diskonaut
gAUR diskonaut
gvim -c "silent! /imsnif" PKGBUILD
makepkg -sic
true

#=> Dropbox 0 (re)install
# only once there's a browser, and preferably after LastPass
gAUR dropbox
gvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
makepkg -sic
true

#=> Dropbox 1 dropbox-dist folder
install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

#=> Dust
# (after Rust Toolchain)
gAUR dust
gvim -c "silent! /https:\/\/github.com\/bootandy\/" PKGBUILD
makepkg -sic

#=> ffmpeg
sudo pacman -S ffmpeg

#=> fonts - figlet-fonts
# brings in figlet
gAUR figlet-fonts
gvim -c "silent! /ftp.figlet.org" PKGBUILD
makepkg -sic

#=> fonts - fontpreview-git
gAUR fontpreview-git
gvim -c "silent! /sdushantha" PKGBUILD
makepkg -sic

#=> fonts - gnu-free-fonts
sudo pacman -S gnu-free-fonts

#=> fonts - lohit-fonts
gAUR lohit-fonts
gvim -c "silent! /_fhosted" PKGBUILD
makepkg -sic

#=> fonts - ttf-dejavu
sudo pacman -S ttf-dejavu

#=> Falkon
sudo pacman -S falkon

#=> Firefox
sudo pacman -S firefox

#=> fangfrisch 1 AUR
gAUR python-fangfrisch
gvim -c "silent! /rseichter" PKGBUILD
makepkg -sic
true

#=> fangfrisch 2 settings
# 1 create database structure
sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# 2 enable systemd timer
sudo systemctl enable fangfrisch.timer --now

#=> gifski
sudo pacman -S gifski  # (for making animated GIFs)

#=> Google Chrome
gAUR google-chrome
gvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

#=> gnome-disk-utility
sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

#=> gst123
gAUR gst123
gvim -c "silent! /stefan" PKGBUILD
makepkg -sic
true

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

#=> gucharmap
sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

#=> GraphicsMagick
sudo pacman -S graphicsmagick

#=> HPLIP
sudo pacman -S hplip

#=> java-commons-lang
sudo pacman -S java-commons-lang  # (for pdftk's functions)

#=> keepassxc
sudo pacman -S keepassxc

#=> LanguageTool
sudo pacman -S languagetool

# #=> libappindicator-gtk3
# sudo pacman -S libappindicator-gtk3  # didn't help with non-captured Dropbox tray icon...

#=> libgphoto2
sudo pacman -S gphoto2  # brings in  libgphoto2  & gives cli access to it
sudo pacman -S gvfs-gphoto2  # for GNOME Files integration

#=> libva-utils
sudo pacman -S libva-utils

#=> mesa-demos
sudo pacman -S mesa-demos

# #=> moar remove
# cd ~/Arch/AUR
# rAUR moar
# sudo pacman -Rs moar

#=> moar-git 0 install
gAUR moar-git
gvim -c "silent! /walles" PKGBUILD
makepkg -sic
true

# #=> moar-git 1 remove
# cd ~/Arch/AUR
# rAUR moar-git
# sudo pacman -Rs moar-git

# #=> MusicBrainz Picard
# sudo pacman -S chromaprint picard
# # Options > Options > [ General > Check for updates  offticked
# #   Fingerprinting > Fingerprint calculator > /usr/bin/fpcalc
# #   User Interface > Show a quit confirmation  off ]
# true

# #=> nodejs-mapscii 0 install
# gAUR nodejs-mapscii
# gvim PKGBUILD
# makepkg -sic
# true

# #=> nodejs-mapscii 1 remove
# sudo pacman -Rs nodejs-mapscii

#=> nordvpn-bin 0 install
gAUR nordvpn-bin
gvim -c "silent! /https:\/\/repo.nordvpn.com\/deb\/nordvpn\/debian\/pool\/main\/nordvpn_" PKGBUILD
makepkg -sic
true

#=> nordvpn-bin 1 configure
sudo usermod -aG nordvpn jo  # need to re-login
true
sudo systemctl enable nordvpnd.service --now
true

# #=> OBS Studio 0 install
# sudo pacman -S obs-studio

# #=> OBS Studio 0 remove
# sudo pacman -Rs obs-studio
# rm -r ~/.config/obs-studio

#=> OpenShot
sudo pacman -S openshot

#=> PDFsam
# depends on  jdk-openjdk
gAUR pdfsam
gvim -c "silent! /torakiki" PKGBUILD
makepkg -sic

#=> pdftk
sudo pacman -S pdftk

#=> peek
sudo pacman -S peek  # (GIF Screen Recorder)

#=> Perl modules for JSON
sudo pacman -S perl-json perl-json-parse perl-json-xs

#=> perl-clone-pp
# for  perl-data-printer
gAUR perl-clone-pp
gvim -c "silent! /NEILB" PKGBUILD
makepkg -sic
true

#=> perl-data-printer
gAUR perl-data-printer
gvim -c "silent! /GARU" PKGBUILD
makepkg -sic
true

#=> perl-image-exiftool
sudo pacman -S perl-image-exiftool

# #=> PhotoCollage
# gAUR photocollage
# gvim PKGBUILD
# makepkg -sic

#=> Pinta
sudo pacman -S pinta

#=> pip
sudo pacman -S python-pip

#=> pscircle-git
gAUR pscircle-git
gvim -c "silent! /mildlyparallel" PKGBUILD
makepkg -sic

#=> Python 2
sudo pacman -S python2  # needed for  oauth2.py

#=> Quod Libet
sudo pacman -S quodlibet

#=> Samokovarov's jump
gAUR jump
gvim -c "silent! /gsamokovarov" PKGBUILD
makepkg -sic

#=> Spotify
gAUR spotify
gvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
makepkg -sic

#=> sqlitebrowser
sudo pacman -S sqlitebrowser

#=> tint-tetris
gAUR tint-tetris
gvim -c "silent! /debian" PKGBUILD
makepkg -sic

# #=> tint2 0 remove
# sudo pacman -Rs tint2

# #=> tint2 1 tint2-git
# gAUR tint2-git
# gvim -c "silent! /tint2.git" PKGBUILD
# makepkg -sic

#=> tspreed
gAUR tspreed
gvim -c "silent! /n-ivkovic" PKGBUILD
makepkg -sic
true

#=> ttf-croscore
sudo pacman -S ttf-croscore

#=> Vimiv
sudo pacman -S vimiv

#=> xbindkeys
sudo pacman -S xbindkeys

#=> youtube-dl
sudo pacman -S youtube-dl

#=> Zoom
gAUR zoom
gvim -c "silent! /zoom.us" PKGBUILD
makepkg -sic

