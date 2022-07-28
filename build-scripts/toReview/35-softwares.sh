#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# AUR development packages:
#  gctm  is defined in $Bash/bashrc-console
#  use  $ARCHBUILDS/build-scripts/27-remakeAURdevs.sh  to later update them

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

# #=> ansiweather
# gAUR ansiweather
# nvim -c "silent! /fcambus" PKGBUILD
# makepkg -sic
# true

# #=> asunder
# sudo pacman -S asunder

# #=> bat-extras-git
# gdAUR bat-extras-git
# nvim -c "silent! /eth-p" PKGBUILD
# makepkg -sic
# true

# #=> bdf-unifont 0 install
# gAUR bdf-unifont
# nvim -c "silent! /unifont" PKGBUILD
# makepkg -sic
# pactree -r bdf-unifont  # shows it's maybe not needed
# true

# #=> bdf-unifont 1 remove
# sudo pacman -Rs bdf-unifont

# #=> bfg
# gAUR bfg
# nvim PKGBUILD
# nvim -c "silent! /madgag" PKGBUILD
# makepkg -sic  # jre-openjdk

# #=> bpytop
# # supersedes  Bashtop
# sudo pacman -S bpytop

# #=> cht.sh-git
# gdAUR cht.sh-git
# nvim -c "silent! /chubin" PKGBUILD
# makepkg -sic

# #=> clamav-unofficial-sigs 0 install
# gdAUR clamav-unofficial-sigs
# nvim -c "silent! /extremeshok" PKGBUILD
# makepkg -sic
# sudo systemctl enable clamav-unofficial-sigs.timer

# #=> clamav-unofficial-sigs 1 remove
# sudo systemctl disable clamav-unofficial-sigs.timer
# sudo pacman -Rs clamav-unofficial-sigs

# #=> cmus-notify
# gAUR cmus-notify
# nvim -c "silent! /AntoineGagne" PKGBUILD
# makepkg -sic
# true

# #=> colorpicker
# gAUR colorpicker
# nvim -c "silent! /Jack12816" PKGBUILD
# makepkg -sic

# #=> devtools
# sudo pacman -S devtools
# # mkdir /mnt/SD480GSSDPlus/chroot

# #=> didyoumean
# # provides  dym
# rustup update
# gAUR didyoumean
# nvim -c "silent! /hisbaan\/didyoumean" PKGBUILD
# makepkg -sic  # takes ages
# true

# #=> diskonaut
# gAUR diskonaut
# nvim -c "silent! /imsnif" PKGBUILD
# makepkg -sic  # takes a long time
# true

# #=> diskus
# sudo pacman -S diskus

# #=> Dropbox 0 (re)install
# # only once there's a browser, and preferably after LastPass
# gAUR dropbox
# nvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
# makepkg -sic
# true

# #=> Dropbox 1 dropbox-dist folder
# install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dropbox 2 uninstall
# sudo pacman -Rs dropbox

# #=> dua-cli
# sudo pacman -S dua-cli

# #=> Dust
# # (after Rust Toolchain)
# sudo pacman -S dust

# #=> ffmpeg
# sudo pacman -S ffmpeg

# #=> fonts - figlet-fonts
# # brings in figlet
# gAUR figlet-fonts
# nvim -c "silent! /ftp.figlet.org" PKGBUILD
# makepkg -sic

# #=> fonts - fontpreview-git
# gAUR fontpreview-git
# nvim -c "silent! /sdushantha" PKGBUILD
# makepkg -sic

# #=> fonts - gnu-free-fonts
# sudo pacman -S gnu-free-fonts

# #=> fonts - lohit-fonts
# gAUR lohit-fonts
# nvim -c "silent! /_fhosted" PKGBUILD
# makepkg -sic

# #=> fonts - ttf-dejavu
# sudo pacman -S ttf-dejavu

# #=> Falkon
# sudo pacman -S falkon

# #=> Firefox
# sudo pacman -S firefox

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

# #=> Font Manager
# sudo pacman -S font-manager

# #=> gdu
# sudo pacman -S gdu

# #=> gifski
# sudo pacman -S gifski  # (for making animated GIFs)

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

#=> Google Chrome
gAUR google-chrome
nvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

# #=> GraphicsMagick
# sudo pacman -S graphicsmagick

# #=> gst123
# gAUR gst123
# nvim -c "silent! /stefan" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> gucharmap
# sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

# #=> HPLIP
# sudo pacman -S hplip

# #=> iscan
# gAUR iscan
# nvim -c "silent! /support.epson.net" PKGBUILD
# makepkg -sic  # takes a long time...
# true

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

# #=> libstdc++5-bin
# gAUR libstdc++5-bin
# nvim -c "silent! /ftp.de.debian.org" PKGBUILD
# makepkg -sic
# true

# #=> libva-utils
# sudo pacman -S libva-utils

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

# #=> mesa-demos 0 install
# sudo pacman -S mesa-demos

# #=> mesa-demos 1 remove
# sudo pacman -Rs mesa-demos

# #=> mesa-utils
# # for glxinfo
# sudo pacman -S mesa-utils

# #=> moar 0 install
# gAUR moar
# nvim -c "silent! /walles" PKGBUILD
# makepkg -sic
# true

# #=> moar remove
# cd ~/Arch/AUR
# rAUR moar
# sudo pacman -Rs moar

# #=> moar-git 0 install
# gAUR moar-git
# nvim -c "silent! /walles" PKGBUILD
# makepkg -sic
# true

# #=> moar-git 1 remove
# cd ~/Arch/AURdev-clone
# rAUR moar-git
# sudo pacman -Rs moar-git
# true

# #=> MusicBrainz Picard
# sudo pacman -S chromaprint picard
# # Options > Options > [ General > Check for updates  offticked
# #   Fingerprinting > Fingerprint calculator > /usr/bin/fpcalc
# #   User Interface > Show a quit confirmation  off ]
# true

# #=> MyPaint
# sudo pacman -S mypaint
# true

# #=> nodejs-mapscii 0 install
# gAUR nodejs-mapscii
# nvim PKGBUILD
# makepkg -sic
# true

# #=> nodejs-mapscii 1 remove
# sudo pacman -Rs nodejs-mapscii

# #=> nordvpn-bin 0 (re)install
# gAUR nordvpn-bin
# nvim -c "silent! /https:\/\/repo.nordvpn.com\/deb\/nordvpn\/debian\/pool\/main\/nordvpn_" PKGBUILD
# makepkg -sic
# true

# #=> nordvpn-bin 1 configure
# sudo usermod -aG nordvpn jo  # need to re-login
# true
# sudo systemctl enable nordvpnd.service --now
# true

# #=> noto-fonts-cjk
# # for  $MD4PDF/GNULinux/md4pdf.sh
# sudo pacman -S noto-fonts-cjk
# true

# #=> npm 0 configure npm-global
# mkdir ~/.npm-global
# npm config set prefix=$HOME/.npm-global

# #=> npm 1 cspell
# npm install -g cspell

# #=> OBS Studio 0 install
# sudo pacman -S obs-studio

# #=> OBS Studio 0 remove
# sudo pacman -Rs obs-studio
# rm -r ~/.config/obs-studio

# #=> OpenShot
# sudo pacman -S openshot

# #=> Pacfinder
# gAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

# #=> patched Cascadia Code font 0 install
# gAUR nerd-fonts-cascadia-code
# nvim -c "silent! /ryanoasis\/nerd-fonts" PKGBUILD
# makepkg -sic
# true

# #=> patched Cascadia Code font 0 remove
# sudo pacman -Rs nerd-fonts-cascadia-code

# #=> PDFsam
# gAUR pdfsam
# nvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic  # choose  jdk-openjdk
# true

# #=> pdftk
# sudo pacman -S pdftk

# #=> peek
# sudo pacman -S peek  # (GIF Screen Recorder)

# #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs

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

# #=> perl-image-exiftool
# sudo pacman -S perl-image-exiftool

# #=> PhotoCollage
# gAUR photocollage
# nvim -c "silent! /adrienverge" PKGBUILD
# makepkg -sic

# #=> Pinta
# sudo pacman -S pinta

# #=> pip
# sudo pacman -S python-pip

# #=> pscircle-git
# gAUR pscircle-git
# nvim -c "silent! /mildlyparallel" PKGBUILD
# makepkg -sic

# #=> Quod Libet
# sudo pacman -S quodlibet

# #=> Samokovarov's jump
# gAUR jump
# nvim -c "silent! /gsamokovarov" PKGBUILD
# makepkg -sic

# #=> shell-color-scripts
# gAUR shell-color-scripts
# nvim -c "silent! /dwt1" PKGBUILD
# makepkg -sic
# true

# #=> Solaar
# # for  Logitech Wireless Mouse M525
# sudo pacman -S solaar
# sudo groupadd plugdev
# sudo usermod -aG plugdev jo  # need to re-login

# #=> Spotify 0 signing key
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
# gpg -k 5E3C45D7B312C643

# #=> Spotify 1 (re)install
# gAUR spotify
# nvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
# makepkg -sic

# #=> sqlitebrowser
# sudo pacman -S sqlitebrowser

# #=> tint-tetris
# gAUR tint-tetris
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> tint2 0 remove
# sudo pacman -Rs tint2

# #=> tint2 1 tint2-git
# gAUR tint2-git
# nvim -c "silent! /tint2.git" PKGBUILD
# makepkg -sic

# #=> tint3-cpp-git
# gdAUR tint3-cpp-git
# nvim -c "silent! /jmc-88\/tint3.git" PKGBUILD
# makepkg -sic

# #=> tspreed
# gAUR tspreed
# nvim -c "silent! /n-ivkovic" PKGBUILD
# makepkg -sic
# true

# #=> ttf-croscore
# sudo pacman -S ttf-croscore

# #=> Vimiv
# sudo pacman -S vimiv

# #=> vorbis-tools
# # for  oggenc
# sudo pacman -S vorbis-tools

# #=> whipper
# sudo pacman -S whipper

# #=> xbindkeys
# sudo pacman -S xbindkeys

# #=> Xournal++
# sudo pacman -S xournalpp

# #=> youtube-dl
# sudo pacman -S youtube-dl

# #=> yt-dlp
# sudo pacman -S yt-dlp

#=> Zoom
gAUR zoom
nvim -c "silent! /zoom.us" PKGBUILD
makepkg -sic

