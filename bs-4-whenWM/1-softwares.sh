#!/bin/bash

# softwares that require a WM

# bash $bSc/4-whenWM/1-softwares.sh

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -ev  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> acpilight - configure
gpasswd -a jo video  # groups jo
sudo cp $machBld/etc/90-backlight.rules /etc/udev/rules.d/90-backlight.rules
#  pb /etc/udev/rules.d/90-backlight.rules
# after a reboot can  xbacklight -inc 12

#=> asunder
sudo pacman -S asunder  # graphical Audio CD ripper

#=> feh
sudo pacman -S feh

#=> ffmpeg
sudo pacman -S ffmpeg

#=> ffmpegthumbnailer
sudo pacman -S ffmpegthumbnailer  # for  /usr/share/clifm/plugins/vid_viewer.sh

#=> Falkon
sudo pacman -S falkon

#=> Firefox 0 install
sudo pacman -S firefox

#=> Firefox 1 remove
sudo pacman -Rs firefox

#=> Font Manager
sudo pacman -S font-manager

#=> gifski
sudo pacman -S gifski  # (for making animated GIFs)

#=> gnome-disk-utility
sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

#=> GPicView
# Menu > Graphics > Image Viewer
sudo pacman -S gpicview
gpicview  # Preferences > Automatically save
true

#=> GraphicsMagick
sudo pacman -S graphicsmagick

#=> gucharmap
sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

#=> HPLIP
sudo pacman -S hplip

#=> HTMLHint
sudo pacman -S htmlhint

#=> java-commons-lang
sudo pacman -S java-commons-lang  # (for pdftk's functions)

#=> keepassxc
sudo pacman -S keepassxc

#=> libgphoto2
sudo pacman -S gphoto2  # brings in  libgphoto2  & gives cli access to it
sudo pacman -S gvfs-gphoto2  # for GNOME Files integration

#=> metis 1 remove
sudo pacman -Rs metis

#=> mpv
sudo pacman -S mpv

#=> MusicBrainz Picard
sudo pacman -S chromaprint picard
# Options > Options > [ General > Check for updates  offticked
#   (Fingerprinting > Fingerprint calculator > /usr/bin/fpcalc)
#   User Interface > Show a quit confirmation  off ]
true

#=> MyPaint
sudo pacman -S mypaint
true

#=> nasm
sudo pacman -S nasm  # for  cpu-x

#=> nawk
sudo pacman -S nawk  # for  cpu-x

#=> OBS Studio 0 install
sudo pacman -S obs-studio

# #=> OBS Studio 0 remove
# sudo pacman -Rs obs-studio
# rm -r ~/.config/obs-studio

#=> odt2txt
sudo pacman -S odt2txt

#=> opencl-headers
sudo pacman -S opencl-headers  # for  cpu-x

#=> OpenShot
sudo pacman -S openshot

#=> PCManFM
sudo pacman -S pcmanfm
# now run it to set some of my preferences:  Edit > Preferences >
#  General > Confirm before moving files into "trash can"   off-ticked
#  Volume Management > Show available options  off-ticked
#  Advanced > Terminal > urxvt
true

#=> pdftk
sudo pacman -S pdftk

#=> peek
sudo pacman -S peek  # (GIF Screen Recorder)

#=> perl-image-exiftool
sudo pacman -S perl-image-exiftool

#=> Pinta 0 install
sudo pacman -S pinta

#=> Pinta 0 remove
sudo pacman -Rs pinta

#=> pqiv
sudo pacman -S pqiv

#=> qt5ct
# - Qt5 theme - allows better tab differentiation in CopyQ
sudo pacman -S qt5ct
#  QT_QPA_PLATFORMTHEME=qt5ct  is set in  ~/.xinitrc

#=> Quod Libet
sudo pacman -S quodlibet

#=> SANE
sudo pacman -S sane

#=> sqlitebrowser
sudo pacman -S sqlitebrowser

#=> sxiv
sudo pacman -S sxiv

#=> Vimiv
sudo pacman -S vimiv

#=> Xournal++
sudo pacman -S xournalpp  # for hand-writing pad

#=> yamllint
sudo pacman -S yamllint

#=> Zathura
sudo pacman -S zathura-pdf-mupdf
# zathurarc  symlinked in  $bSc/symlinks/jo-0.sh

