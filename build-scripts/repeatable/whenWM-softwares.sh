#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console
# softwares that require a WM

# #=> asunder
# sudo pacman -S asunder  # graphical Audio CD ripper

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

# #=> dragon-drag-and-drop
# rAUR dragon-drag-and-drop
# gvim -c "silent! /dragon" PKGBUILD
# makepkg -sic

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

# #=> feh
# sudo pacman -S feh

# #=> ffmpeg
# sudo pacman -S ffmpeg

# #=> ffmpegthumbnailer
# sudo pacman -S ffmpegthumbnailer  # for  /usr/share/clifm/plugins/vid_viewer.sh

# #=> Falkon
# sudo pacman -S falkon

# #=> Firefox
# sudo pacman -S firefox

# #=> Font Manager
# sudo pacman -S font-manager

# #=> gifski
# sudo pacman -S gifski  # (for making animated GIFs)

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

# #=> Google Chrome
# gAUR google-chrome
# nvim -c "silent! /dl.google.com" PKGBUILD
# makepkg -sic
# true

# #=> GPicView
# sudo pacman -S gpicview
# gpicview  # Preferences > Automatically save
# true

# #=> GraphicsMagick
# sudo pacman -S graphicsmagick

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

# #=> libgphoto2
# sudo pacman -S gphoto2  # brings in  libgphoto2  & gives cli access to it
# sudo pacman -S gvfs-gphoto2  # for GNOME Files integration

# #=> mpv
# sudo pacman -S mpv

# #=> MusicBrainz Picard
# sudo pacman -S chromaprint picard
# # Options > Options > [ General > Check for updates  offticked
# #   Fingerprinting > Fingerprint calculator > /usr/bin/fpcalc
# #   User Interface > Show a quit confirmation  off ]
# true

# #=> MyPaint
# sudo pacman -S mypaint
# true

# #=> nomacs
# sudo pacman -S nomacs
# # now run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> nsxiv
# gAUR nsxiv
# nvim -c "silent! /https:\/\/codeberg.org\/nsxiv\/nsxiv" PKGBUILD
# makepkg -sic
# true

# #=> OBS Studio 0 install
# sudo pacman -S obs-studio

# #=> OBS Studio 0 remove
# sudo pacman -Rs obs-studio
# rm -r ~/.config/obs-studio

# #=> odt2txt
# sudo pacman -S odt2txt

# #=> OpenShot
# sudo pacman -S openshot

# #=> Pacfinder
# gAUR pacfinder
# nvim -c "silent! /stevenbenner\/pacfinder" PKGBUILD
# makepkg -sic
# true

# #=> PCManFM
# sudo pacman -S pcmanfm
# handlr set inode/directory pcmanfm.desktop
# # now run it to set some of my preferences:  Edit > Preferences >
# #  General > Confirm before moving files into "trash can"   off-ticked
# #  Volume Management > Show available options  off-ticked
# #  Advanced > Terminal > urxvt
# true

# #=> PDFsam
# gAUR pdfsam
# nvim -c "silent! /torakiki" PKGBUILD
# makepkg -sic  # choose  jdk-openjdk
# true

# #=> pdftk
# sudo pacman -S pdftk

# #=> peek
# sudo pacman -S peek  # (GIF Screen Recorder)

# #=> perl-image-exiftool
# sudo pacman -S perl-image-exiftool

# #=> PhotoCollage
# gAUR photocollage
# nvim -c "silent! /adrienverge" PKGBUILD
# makepkg -sic

# #=> Pinta
# sudo pacman -S pinta

# #=> pqiv
# sudo pacman -S pqiv

# #=> pscircle-git
# gAUR pscircle-git
# nvim -c "silent! /mildlyparallel" PKGBUILD
# makepkg -sic

# #=> qpdfview
# sudo pacman -S qpdfview

# #=> qt5ct
# # - Qt5 theme - allows better tab differentiation in CopyQ
# sudo pacman -S qt5ct
# #  QT_QPA_PLATFORMTHEME=qt5ct  is set in  ~/.xinitrc

# #=> Quod Libet
# sudo pacman -S quodlibet

# #=> SANE
# sudo pacman -S sane

# #=> Spotify 0 signing key
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
# gpg -k 5E3C45D7B312C643

# #=> Spotify 1 (re)install
# gAUR spotify
# nvim -c "silent! /http:\/\/repository.spotify.com\/dists\/testing\/non-free\/binary-amd64\/Packages" PKGBUILD
# makepkg -sic

# #=> sqlitebrowser
# sudo pacman -S sqlitebrowser

# #=> sxiv
# sudo pacman -S sxiv

# #=> urlview
# # creates a numbered list of url's in a resource
# gAUR urlview
# gvim PKGBUILD
# makepkg -sic

# #=> Vimiv
# sudo pacman -S vimiv

# #=> Xournal++
# sudo pacman -S xournalpp  # for hand-writing pad

# #=> Zathura
# sudo pacman -S zathura-pdf-mupdf
# # zathurarc  symlinked in  $bSc/anytime/symlinks-jo-0.sh

# #=> Zoom
# gAUR zoom
# nvim -c "silent! /zoom.us" PKGBUILD
# makepkg -sic

