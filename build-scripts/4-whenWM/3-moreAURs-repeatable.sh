#!/bin/bash

# AURs that require a WM

# bash $bSc/4-whenWM/3-moreAURs-repeatable.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console
# softwares that require a WM

#=> clifm-git
gdAUR clifm-git
nvim -c "silent! /https:\/\/github.com\/leo-arch\/clifm" PKGBUILD
makepkg -sic

#=> cmus-notify 0 install
gAUR cmus-notify
nvim -c "silent! /AntoineGagne" PKGBUILD
makepkg -sic
true

# #=> cmus-notify 1 remove
# sudo pacman -Rs cmus-notify

#=> colorpicker
gAUR colorpicker
nvim -c "silent! /Jack12816" PKGBUILD
makepkg -sic

#=> dragon-drag-and-drop
rAUR dragon-drag-and-drop
gvim -c "silent! /dragon" PKGBUILD
makepkg -sic

#=> Dropbox 0 (re)install
# only once there's a browser, and preferably after LastPass
gAUR dropbox
nvim -c "silent! /dropboxstatic.com\/dbx-releng\/client\/dropbox-lnx.x86_64-" PKGBUILD
makepkg -sic
true

#=> Dropbox 1 dropbox-dist folder
install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

# #=> Dropbox 2 uninstall
# sudo pacman -Rs dropbox

#=> Google Chrome
gAUR google-chrome
nvim -c "silent! /dl.google.com" PKGBUILD
makepkg -sic
true

#=> iscan
gAUR iscan
nvim -c "silent! /support.epson.net" PKGBUILD
makepkg -sic  # takes a long time...
true

#=> nsxiv
gAUR nsxiv
nvim -c "silent! /https:\/\/codeberg.org\/nsxiv\/nsxiv" PKGBUILD
makepkg -sic
true

#=> Pacfinder
gAUR pacfinder
nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
makepkg -sic
true

#=> PDFsam
gAUR pdfsam
nvim -c "silent! /torakiki" PKGBUILD
makepkg -sic  # choose  jdk-openjdk
true

#=> perl-unicode-utf8
gAUR perl-unicode-utf8
nvim -c "silent! /metacpan.org" PKGBUILD
makepkg -sic  # requires  perl-test-fatal
true

#=> PhotoCollage
gAUR photocollage
nvim -c "silent! /adrienverge" PKGBUILD
makepkg -sic

#=> audio PNMixer
gAUR pnmixer
nvim -c "silent! /https:\/\/github.com\/nicklan\/pnmixer" PKGBUILD
makepkg -sic
# now  Multimedia > PNMixer > Preferences > View > Draw Volume Meter on Tray Icon
true

#=> pscircle-git
gAUR pscircle-git
nvim -c "silent! /mildlyparallel" PKGBUILD
makepkg -sic

#=> qpdfview
gAUR qpdfview
nvim -c "silent! /launchpad" PKGBUILD
makepkg -sic

#=> Spotify 0 signing key
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
gpg -k 5E3C45D7B312C643

#=> Spotify 1 (re)install
gAUR spotify
nvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
makepkg -sic

#=> urlview
# creates a numbered list of url's in a resource
gAUR urlview
gvim PKGBUILD
makepkg -sic

#=> Zoom
gAUR zoom
nvim -c "silent! /zoom.us" PKGBUILD
makepkg -sic

