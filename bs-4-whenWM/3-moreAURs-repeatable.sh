#!/bin/bash

# AURs that require a WM

# bash $OSAB/bs-4-whenWM/3-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  are defined in $Bash/bashrc-console
# softwares that require a WM

# #=> archlinux-java-run
# # for PDFsam
# gAUR archlinux-java-run
# nvim -c "silent! /michaellass\/archlinux-java-run" PKGBUILD
# makepkg -sic
# true

# #=> clifm 0 (re)install
# gAUR clifm
# nvim -c "silent! /https:\/\/github.com\/leo-arch" PKGBUILD
# makepkg -sic
# cd /usr/share/clifm/plugins
# sudo gcc -o kbgen kbgen.c -lcurses
# true

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

# #=> davfs2 0 Ali Abdallah's key
# gpg --recv-keys B94556F81C85D0D5

# #=> davfs2 1 (re)install
# gAUR davfs2
# nvim -c "silent! /savannah.nongnu.org\/projects" PKGBUILD
# makepkg -sic
# true

# #=> davfs2 2 dav_group
# sudo sed -i 's/^# dav_group/dav_group/' /etc/davfs2/davfs2.conf
# sudo groupadd davfs2
# sudo gpasswd -a jo davfs2

# #=> davfs2 3 secrets
# mkdir ~/.davfs2
# cp $Enc/Digital1/davfs2Secrets ~/.davfs2/secrets
# chmod -c 0600 ~/.davfs2/secrets
# s ~/.davfs2/secrets

# #=> dragon-drop
# gAUR dragon-drop
# nvim -c "silent! /mwh\/dragon" PKGBUILD
# makepkg -sic

# #=> Dropbox 0 (re)install
# gAUR dropbox
# nvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
# makepkg -sic
# # - if missed, in  ~/Arch/AUR/dropbox/,  sudo pacman -U  dropbox-185.4.6054-1-x86_64.pkg.tar.zst
# true

# #=> Dropbox 1 dropbox-dist folder
# install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dropbox 2 uninstall
# sudo pacman -Rs dropbox

# #=> epson-inkjet-printer-escpr
# gAUR epson-inkjet-printer-escpr
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

# #=> epson-printer-utility
# gAUR epson-printer-utility
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

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

# #=> nomacs
# gAUR nomacs
# nvim -c "silent! /https:\/\/github.com\/nomacs\/nomacs.git" PKGBUILD
# makepkg -sic  # takes ages...
# # - if missed, in  ~/Arch/AUR/nomacs/,  sudo pacman -U nomacs-1:3.17.2287-1-x86_64.pkg.tar.zst
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> Pacfinder
# gAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

# #=> briss
# gAUR briss
# nvim -c "silent! /sourceforge.net\/projects\/briss" PKGBUILD
# makepkg -sic

# #=> mod_fcgid 0 install
# # for Apache
# gAUR mod_fcgid
# nvim -c "silent! /www.apache.org\/dist\/httpd\/mod_fcgid\/mod_fcgid" PKGBUILD
# makepkg -sic
# sudo cp $OSAB/etc/Apache/php-fcgid.conf /etc/httpd/conf/extra/php-fcgid.conf

# #=> mod_fcgid 1 remove
# sudo pacman -Rs mod_fcgid

# #=> mpdris2
# # for MPD
# gAUR mpdris2
# nvim -c "silent! /github.com\/eonpatapon\/mpDris2\/archive" PKGBUILD
# makepkg -sic

# #=> opera
# # for MPD
# gAUR opera
# nvim -c "silent! /get.geo.opera.com" PKGBUILD
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

# #=> PDFsam 0 (re)install
# gAUR pdfsam
# nvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic  # choose  jdk-openjdk
# true

# #=> PDFsam 1 remove
# sudo pacman -Rs pdfsam

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

# #=> pscircle
# gAUR pscircle
# nvim -c "silent! /https:\/\/gitlab.com\/mildlyparallel\/pscircle" PKGBUILD
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

# #=> usbimager
# gAUR usbimager
# nvim -c "silent! /usbimager" PKGBUILD
# makepkg -sic

# #=> verbiste
# gAUR verbiste
# nvim -c "silent! /perso.b2b2c.ca\/\~sarrazip\/dev" PKGBUILD
# makepkg -sic

# #=> vimpc-git
# # for MPD
# gdAUR vimpc-git
# nvim -c "silent! /github.com\/boysetsfrog\/vimpc" PKGBUILD
# makepkg -sic
# mkdir ~/.config/vimpc

# #=> yj-git
# gdAUR yj-git
# nvim -c "silent! /github.com\/sclevine\/yj" PKGBUILD
# makepkg -sic

# #=> ymuse
# # for MPD
# gAUR ymuse
# nvim -c "silent! /github.com\/yktoo" PKGBUILD
# makepkg -sic  # takes ages to work through languages
# true
# #  ~/Arch/AUR/ymuse  makepkg --install  if you're too late

# #=> Zoom
# gAUR zoom
# nvim -c "silent! /zoom.us" PKGBUILD
# makepkg -sic

