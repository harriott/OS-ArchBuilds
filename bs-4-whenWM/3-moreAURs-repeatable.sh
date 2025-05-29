#!/bin/bash

# AURs that require a WM

# bash $OSAB/bs-4-whenWM/3-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  are defined in $AjB/bashrc-console
# softwares that require a WM

# #=> archlinux-java-run
# # for PDFsam
# gAUR archlinux-java-run
# nvim -c "silent! /michaellass\/archlinux-java-run" PKGBUILD
# makepkg -sic
# true

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

# #=> cozy-audiobooks
# gAUR cozy-audiobooks
# nvim -c "silent! /geigi\/cozy" PKGBUILD
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

# #=> epson-printer-utility gAUR epson-printer-utility
# nvim -c "silent! /download3.ebz.epson.net" PKGBUILD
# makepkg -sic
# true

#=> Google Chrome
gAUR google-chrome
nvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

# #=> hplip-plugin 0 HPLIP key
# gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 4ABA2F66DBD5A95894910E0673D770CDA59047B9

# #=> hplip-plugin 1 install
# gAUR hplip-plugin
# nvim -c "silent! /developers.hp.com\/hp-linux-imaging-and-printing" PKGBUILD
# makepkg -sic  # requires  perl-test-fatal
# true

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

# #=> keepassxc-git 0 install
# gAUR keepassxc-git
# nvim -c "silent! /keepassxreboot\/keepassxc" PKGBUILD
# makepkg -sic  # takes a long, long, long time, with endless warnings
# true

# #=> keepassxc-git 1 remove
# sudo pacman -Rs keepassxc-git

# #=> nomacs 0 install
# gAUR nomacs
# nvim -c "silent! /https:\/\/github.com\/nomacs\/nomacs.git" PKGBUILD
# makepkg -sic  # takes ages...
# # - if missed, in  ~/Arch/AUR/nomacs/,  sudo pacman -U nomacs-1:3.17.2287-1-x86_64.pkg.tar.zst
# # after first install
# #  run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nomacs 1 remove
# sudo pacman -Rs nomacs nomacs-debug
# #=> nomacs-git
# gdAUR nomacs-git
# nvim -c "silent! /_pkgname=nomacs" PKGBUILD
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

# #=> oama-bin
# # for MPD
# gAUR oama-bin
# nvim -c "silent! /github.com\/pdobsan" PKGBUILD
# makepkg -sic
# [ -f ~/.config/oama/config.yaml ] || oama
# true

#=> opera
gAUR opera
nvim -c "silent! /www.opera.com" PKGBUILD
makepkg -sic

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
# #  ~/Arch/AUR/pdfsam  makepkg --install  if you're too late

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

