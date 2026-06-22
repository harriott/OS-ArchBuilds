#!/bin/bash

# AURs that require a WM

# bash $OSAB/bs-4-whenWM/4-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# trzAUR  trzAURd  are defined in $AjB/bashrc-console
# softwares that require a WM

# if too late with pw,  C ~/Arch/AUR/  then move into the relevant directory for  makepkg -i

# #=> archlinux-java-run
# # for PDFsam
# trzAUR archlinux-java-run
# nvim -c "silent! /michaellass\/archlinux-java-run" PKGBUILD
# makepkg -sic
# true

# #=> asunder
# # graphical Audio CD ripper
# trzAUR asunder
# nvim -c "silent! /littlesvr.ca\/asunder\/releases" PKGBUILD
# makepkg -sic
# true

#=> briss
# Java tool for PDF cropping
trzAUR briss
nvim -c "silent! /sourceforge.net\/projects\/briss" PKGBUILD
makepkg -sic

#=> browsh
# Firefox in the terminal, for PDFsam
trzAUR browsh
nvim -c "silent! /browsh" PKGBUILD
makepkg -sic
true

# #=> cozy-audiobooks
# trzAUR cozy-audiobooks
# nvim -c "silent! /geigi\/cozy" PKGBUILD
# makepkg -sic

# #=> Dropbox 0 (re)install
# trzAUR dropbox
# nvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
# makepkg -sic
# true

# #=> Dropbox 1 dropbox-dist folder
# install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dropbox 2 uninstall
# sudo pacman -Rs dropbox

# #=> epson-inkjet-printer-escpr
# trzAUR epson-inkjet-printer-escpr
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

# #=> epson-printer-utility trzAUR epson-printer-utility
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

# #=> fastmail
# trzAUR fastmail
# nvim -c "silent! /dl.fastmailcdn.com\/desktop\/production\/linux\/x64" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> fotowall
# trzAUR fotowall
# nvim -c "silent! /www.enricoros.com\/opensource\/fotowall" PKGBUILD
# makepkg -sic
# true

# #=> fsearch
# trzAUR fsearch
# nvim -c "silent! /github.com\/cboxdoerfer\/fsearch" PKGBUILD
# makepkg -sic  # takes a while
# true

#=> Google Chrome
trzAUR google-chrome
nvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

# #=> hplip-plugin 0 HPLIP key
# gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 82FFA7C6AA7411D934BDE173AC69536A2CF3A243
# # from  ~/Arch/AUR/hplip-plugin/PKGBUILD

# #=> hplip-plugin 1 (re)install
# trzAUR hplip-plugin
# nvim -c "silent! /developers.hp.com\/hp-linux-imaging-and-printing" PKGBUILD
# makepkg -sic  # requires  perl-test-fatal
# true

# #=> iscan
# trzAUR iscan
# nvim -c "silent! /support.epson.net" PKGBUILD
# makepkg -sic  # takes a long time...
# true

# #=> keepassxc-git 0 install
# trzAURd keepassxc-git
# nvim -c "silent! /keepassxreboot\/keepassxc" PKGBUILD
# makepkg -sic  # takes a long, long, long time, with endless warnings
# true

# #=> keepassxc-git 1 remove
# sudo pacman -Rs keepassxc-git

# #=> libopenshot 0 install
# trzAUR libopenshot
# nvim -c "silent! /github.com\/openshot\/libopenshot" PKGBUILD
# makepkg -sic  # takes a long, long time...
# true

# #=> libopenshot 1 remove
# sudo pacman -Rs libopenshot

# #=> libopenshot-audio
# # also updates  libopenshot-audio-docs
# trzAUR libopenshot-audio
# nvim -c "silent! /github.com\/openshot\/libopenshot-audio" PKGBUILD
# makepkg -sic  # takes some time
# true

# #=> localsend
# trzAUR localsend
# nvim -c "silent! /github.com\/localsend\/localsend" PKGBUILD
# makepkg -sic  # takes some time
# true

# #=> marktext-deb
# trzAUR marktext-deb
# nvim -c "silent! /https:\/\/github.com\/marktext\/marktext" PKGBUILD
# makepkg -sic
# true

# #=> mod_fcgid 0 install
# # for Apache
# trzAUR mod_fcgid
# nvim -c "silent! /www.apache.org\/dist\/httpd\/mod_fcgid\/mod_fcgid" PKGBUILD
# makepkg -sic
# sudo cp $OSAB/etc/Apache/php-fcgid.conf /etc/httpd/conf/extra/php-fcgid.conf

# #=> mod_fcgid 1 remove
# sudo pacman -Rs mod_fcgid

# #=> mpdris2
# # for MPD
# trzAUR mpdris2
# nvim -c "silent! /github.com\/eonpatapon\/mpDris2\/archive" PKGBUILD
# makepkg -sic

# #=> nomacs 0 install
# trzAUR nomacs
# nvim -c "silent! /https:\/\/github.com\/nomacs\/nomacs.git" PKGBUILD
# makepkg -sic  # takes ages...
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nomacs 1 remove
# sudo pacman -Rs nomacs nomacs-debug

# #=> nomacs-git 0 install
# trzAURd nomacs-git
# nvim -c "silent! /_pkgname=nomacs" PKGBUILD
# makepkg -sic  # takes ages...
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nomacs-git 1 remove
# sudo pacman -Rs nomacs-git nomacs-git-debug

# #=> oama-bin
# # for MPD
# trzAUR oama-bin
# nvim -c "silent! /github.com\/pdobsan" PKGBUILD
# makepkg -sic
# [ -f ~/.config/oama/config.yaml ] || oama
# true

# #=> onlyoffice
# trzAUR onlyoffice
# nvim -c "silent! /https:\/\/www.onlyoffice.com\/desktop.aspx" PKGBUILD
# makepkg -sic
# true

# #=> onlyoffice-bin
# trzAUR onlyoffice-bin
# nvim -c "silent! /https:\/\/www.onlyoffice.com" PKGBUILD
# makepkg -sic
# true

# #=> openshot
# trzAUR openshot
# nvim -c "silent! /www\.openshot\.org" PKGBUILD
# makepkg -sic
# true

# #=> opera
# trzAUR opera
# nvim -c "silent! /www.opera.com" PKGBUILD
# makepkg -sic

# #=> Pacfinder
# trzAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

# #=> pdfCropMargins 0 python-pypdf2
# trzAUR python-pypdf2
# nvim -c "silent! /github.com\/py-pdf" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 1 python-pysimplegui
# trzAUR python-pysimplegui
# nvim -c "silent! /github.com\/PySimpleGUI\/PySimpleGUI" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 2 pdfcropmargins 0 install
# trzAUR pdfcropmargins
# nvim -c "silent! /pypi.org\/project\/pdfCropMargins" PKGBUILD
# makepkg -sic

# #=> pdfCropMargins 2 pdfcropmargins 0 remove
# sudo pacman -Rs pdfcropmargins

# #=> PDFsam 0 (re)install
# trzAUR pdfsam
# nvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic  # only needs  jdk-openjdk
# true

# #=> PDFsam 1 remove
# sudo pacman -Rs pdfsam

# #=> peazip
# trzAUR peazip
# nvim -c "silent! /github.com\/peazip\/PeaZip" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> phonon-qt5
# trzAUR phonon-qt5
# nvim -c "silent! /download.kde.org\/stable\/phonon" PKGBUILD
# makepkg -sic

# #=> phonon-qt5-vlc
# trzAUR phonon-qt5-vlc
# nvim -c "silent! /download.kde.org\/stable\/phonon\/phonon-backend-vlc" PKGBUILD
# makepkg -sic

# #=> PhotoCollage
# trzAUR photocollage
# nvim -c "silent! /adrienverge" PKGBUILD
# makepkg -sic

# #=> pinta 0 install
# trzAURd pinta
# nvim -c "silent! /github.com\/PintaProject\/Pinta" PKGBUILD
# makepkg -sic  # takes a while, using .NET
# true

# #=> pinta 0 remove
# sudo pacman -Rs pinta

# #=> pinta-git 0 install
# trzAURd pinta-git
# nvim -c "silent! /github.com\/PintaProject\/Pinta.git" PKGBUILD
# makepkg -sic  # takes a while, using .NET
# true

# #=> pinta-git 0 remove
# sudo pacman -Rs pinta-git

# #=> pscircle
# trzAUR pscircle
# nvim -c "silent! /https:\/\/gitlab.com\/mildlyparallel\/pscircle" PKGBUILD
# makepkg -sic

# #=> qpdfview 0 Adam Reichold's public key
# gpg --recv-keys 1F521FF0F87E9E1CDE46B8A9F4928C4DD24D4DF8

# #=> qpdfview 1 (re)install
# trzAUR qpdfview
# nvim -c "silent! /launchpad" PKGBUILD
# makepkg -sic  # takes a long time...

# #=> Spotify 0 signing key 0 import
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
# gpg -k 5E3C45D7B312C643

# #=> Spotify 0 signing key 1 delete
# # gpg -k | xcol 5E3C45D7B312C643 spotify
# gpg --delete-key 5E3C45D7B312C643

# #=> Spotify AUR 1 (re)install
# trzAUR spotify
# nvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
# makepkg -sic

# #=> Spotify AUR 2 remove
# sudo pacman -Rs spotify

# #=> thunar-dropbox
# trzAUR thunar-dropbox
# nvim -c "silent! /Jeinzi\/thunar-dropbox" PKGBUILD
# makepkg -sic
# true

# #=> thunderbird-bin
# # first check if  extra/x86_64/thunderbird  has come up-to-date with  Winget
# trzAUR thunderbird-bin
# nvim -c "silent! /https:\/\/archive.mozilla.org\/pub\/thunderbird\/releases\/" PKGBUILD
# makepkg -sic
# sudo pacman -S thunderbird-i18n-en-gb

# #=> urlview
# # creates a numbered list of url's in a resource
# trzAUR urlview
# nvim -c "silent! /debian" PKGBUILD
# makepkg -sic

# #=> usbimager
# trzAUR usbimager
# nvim -c "silent! /usbimager" PKGBUILD
# makepkg -sic

# #=> xnviewmp
# trzAUR xnviewmp
# nvim -c "silent! /XnViewMP-linux-x64" PKGBUILD
# makepkg -sic
# true

# #=> yj-git
# trzAURd yj-git
# nvim -c "silent! /github.com\/sclevine\/yj" PKGBUILD
# makepkg -sic

# #=> ymuse
# # for MPD
# trzAUR ymuse
# nvim -c "silent! /github.com\/yktoo" PKGBUILD
# makepkg -sic  # takes ages to work through languages
# true

# #=> Zoom
# trzAUR zoom
# nvim -c "silent! /zoom.us" PKGBUILD
# makepkg -sic

