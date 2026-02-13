#!/bin/bash

# AURs that require a WM

# bash $OSAB/bs-4-whenWM/3-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  are defined in $AjB/bashrc-console
# softwares that require a WM

# if too late with pw,  C ~/Arch/AUR/  then move into the relevant directory for  makepkg -i

# #=> archlinux-java-run
# # for PDFsam
# gAUR archlinux-java-run
# nvim -c "silent! /michaellass\/archlinux-java-run" PKGBUILD
# makepkg -sic
# true

# #=> asunder
# # graphical Audio CD ripper
# gAUR asunder
# nvim -c "silent! /littlesvr.ca\/asunder\/releases" PKGBUILD
# makepkg -sic
# true

# #=> briss
# gAUR briss
# nvim -c "silent! /sourceforge.net\/projects\/briss" PKGBUILD
# makepkg -sic

# #=> browsh
# # for PDFsam
# gAUR browsh
# nvim -c "silent! /browsh" PKGBUILD
# makepkg -sic
# true

# #=> Chawan
# gAUR chawan-git
# nvim -c "silent! /chawan-git" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> Clapgrep
# gAUR clapgrep
# nvim -c "silent! /github.com\/luleyleo" PKGBUILD
# makepkg -sic
# true

# #=> clifm 0 (re)install
# gAUR clifm
# nvim -c "silent! /https:\/\/github.com\/leo-arch" PKGBUILD
# makepkg -sic
# true

# #=> clifm 1 remove
# sudo pacman -Rs clifm
# rm -r ~/.config/clifm

# #=> clifm-git
# gdAUR clifm-git
# nvim -c "silent! /https:\/\/github.com\/leo-arch\/clifm" PKGBUILD
# makepkg -sic

# #=> cmus-git
# # try switching back to  cmus  if it's > v2.12.0-4
# gAUR cmus-git
# nvim -c "silent! /cmus.github.io" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> cmus-notify 0 install
# gAUR cmus-notify
# nvim -c "silent! /AntoineGagne" PKGBUILD
# makepkg -sic
# true

# #=> cmus-notify 2 remove
# sudo pacman -Rs cmus-notify

# #=> colorpicker
# gAUR colorpicker
# nvim -c "silent! /Jack12816" PKGBUILD
# makepkg -sic

# #=> cozy-audiobooks
# gAUR cozy-audiobooks
# nvim -c "silent! /geigi\/cozy" PKGBUILD
# makepkg -sic

# #=> davfs2 0 Ali Abdallah's key
# gpg --recv-keys B94556F81C85D0D5

# #=> davfs2 1 (re)install
# gAUR davfs2
# nvim -c "silent! /github.com\/alisarctl" PKGBUILD
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

# #=> epson-printer-utility gAUR epson-printer-utility
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

# #=> fastmail
# gAUR fastmail
# nvim -c "silent! /dl.fastmailcdn.com\/desktop\/production\/linux\/x64" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> fsearch
# gAUR fsearch
# nvim -c "silent! /github.com\/cboxdoerfer\/fsearch" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> Google Chrome
# gAUR google-chrome
# nvim -c "silent! /dl.google.com" PKGBUILD
# makepkg -sic
# true

# #=> hplip-plugin 0 HPLIP key
# gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 82FFA7C6AA7411D934BDE173AC69536A2CF3A243
# # from  ~/Arch/AUR/hplip-plugin/PKGBUILD

# #=> hplip-plugin 1 (re)install
# gAUR hplip-plugin
# nvim -c "silent! /developers.hp.com\/hp-linux-imaging-and-printing" PKGBUILD
# makepkg -sic  # requires  perl-test-fatal
# true

#=> HTMLHint
gAUR htmlhint
nvim -c "silent! /github\.com\/htmlhint\/HTMLHint\/archive\/refs\/tags" PKGBUILD
makepkg -sic
true

# #=> iscan
# gAUR iscan
# nvim -c "silent! /support.epson.net" PKGBUILD
# makepkg -sic  # takes a long time...
# true

# #=> js-beautify
# gAUR js-beautify
# nvim -c "silent! /github.com\/beautifier\/js-beautify" PKGBUILD
# makepkg -sic
# true

# #=> keepassxc-git 0 install
# gAUR keepassxc-git
# nvim -c "silent! /keepassxreboot\/keepassxc" PKGBUILD
# makepkg -sic  # takes a long, long, long time, with endless warnings
# true

# #=> keepassxc-git 1 remove
# sudo pacman -Rs keepassxc-git

# #=> libopenshot
# gAUR libopenshot
# nvim -c "silent! /github.com\/openshot\/libopenshot" PKGBUILD
# makepkg -sic  # takes a long, long time...
# true

# #=> libopenshot-audio
# gAUR libopenshot-audio
# nvim -c "silent! /github.com\/openshot\/libopenshot-audio" PKGBUILD
# makepkg -sic
# true

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

# #=> nomacs 0 install
# gAUR nomacs
# nvim -c "silent! /https:\/\/github.com\/nomacs\/nomacs.git" PKGBUILD
# makepkg -sic  # takes ages...
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nomacs 1 remove
# sudo pacman -Rs nomacs nomacs-debug

# #=> nomacs-git 0 install
# gdAUR nomacs-git
# nvim -c "silent! /_pkgname=nomacs" PKGBUILD
# makepkg -sic  # takes ages...
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nomacs-git 1 remove
# sudo pacman -Rs nomacs-git nomacs-git-debug

# #=> oama-bin
# # for MPD
# gAUR oama-bin
# nvim -c "silent! /github.com\/pdobsan" PKGBUILD
# makepkg -sic
# [ -f ~/.config/oama/config.yaml ] || oama
# true

# #=> openshot
# gAUR openshot
# nvim -c "silent! /www\.openshot\.org" PKGBUILD
# makepkg -sic
# true

# #=> opera
# gAUR opera
# nvim -c "silent! /www.opera.com" PKGBUILD
# makepkg -sic

# #=> Pacfinder
# gAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

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
# makepkg -sic  # only needs  jdk-openjdk
# true

# #=> PDFsam 1 remove
# sudo pacman -Rs pdfsam

# #=> peazip
# gAUR peazip
# nvim -c "silent! /github.com\/peazip\/PeaZip" PKGBUILD
# makepkg -sic  # takes a while
# true

# #=> perl-unicode-utf8
# gAUR perl-unicode-utf8
# nvim -c "silent! /metacpan.org" PKGBUILD
# makepkg -sic  # requires  perl-test-fatal
# true

# #=> phonon-qt5
# gAUR phonon-qt5
# nvim -c "silent! /download.kde.org\/stable\/phonon" PKGBUILD
# makepkg -sic

# #=> phonon-qt5-vlc
# gAUR phonon-qt5-vlc
# nvim -c "silent! /download.kde.org\/stable\/phonon\/phonon-backend-vlc" PKGBUILD
# makepkg -sic

# #=> PhotoCollage
# gAUR photocollage
# nvim -c "silent! /adrienverge" PKGBUILD
# makepkg -sic

# #=> pinta 0 install
# gdAUR pinta
# nvim -c "silent! /github.com\/PintaProject\/Pinta" PKGBUILD
# makepkg -sic  # takes a while, using .NET
# true

# #=> pinta 0 remove
# sudo pacman -Rs pinta

# #=> pinta-git 0 install
# gdAUR pinta-git
# nvim -c "silent! /github.com\/PintaProject\/Pinta.git" PKGBUILD
# makepkg -sic  # takes a while, using .NET
# true

# #=> pinta-git 0 remove
# sudo pacman -Rs pinta-git

# #=> PNMixer
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

# #=> spectroterm
# gAUR spectroterm
# nvim -c "silent! /github.com\/sparklost" PKGBUILD
# makepkg -sic
# true

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

# #=> thunderbird-bin
# # first check if  extra/x86_64/thunderbird  has come up-to-date with  Winget
# gAUR thunderbird-bin
# nvim -c "silent! /https:\/\/archive.mozilla.org\/pub\/thunderbird\/releases\/" PKGBUILD
# makepkg -sic
# sudo pacman -S thunderbird-i18n-en-gb

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
# nvim -c "silent! /sarrazip\.com\/dev" PKGBUILD
# makepkg -sic

# #=> vimpc-git 0 install
# # for MPD
# gdAUR vimpc-git
# nvim -c "silent! /github.com\/boysetsfrog\/vimpc" PKGBUILD
# makepkg -sic

# #=> vimpc-git 1 configure
# mkdir ~/.config/vimpc

# #=> xnviewmp
# gAUR xnviewmp
# nvim -c "silent! /XnViewMP-linux-x64" PKGBUILD
# makepkg -sic
# true

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

# #=> Zoom
# gAUR zoom
# nvim -c "silent! /zoom.us" PKGBUILD
# makepkg -sic

