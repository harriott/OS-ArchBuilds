#!/bin/bash

# softwares that require a WM

# bash $OSAB/bs-4-whenWM/1-softwares.sh

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -ev  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Apache HTTP Server 0 install
sudo pacman -S apache
echo 'now sync  $OSAB/nodes/etc_httpd_conf/httpd.conf'

#=> Apostrophe
sudo pacman -S apostrophe

#=> acpilight - configure
gpasswd -a jo video  # groups jo
sudo cp $machBld/etc/90-backlight.rules /etc/udev/rules.d/90-backlight.rules
#  pb /etc/udev/rules.d/90-backlight.rules
# after a reboot can  xbacklight -inc 12

#=> asunder
sudo pacman -S asunder  # graphical Audio CD ripper

#=> Blanket
sudo pacman -S blanket

#=> cameractrls
sudo pacman -S cameractrls

#=> FeatherPad
sudo pacman -S featherpad

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

#=> Flatpak 0 install
sudo pacman -S flatpak

#=> Flatpak - KeePassXC
flatpak install org.keepassxc.KeePassXC

#=> Font Manager
sudo pacman -S font-manager

#=> gifski
sudo pacman -S gifski  # (for making animated GIFs)

#=> gnome-disk-utility
sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

#=> gnuplot
sudo pacman -S gnuplot

#=> GPicView
# Menu > Graphics > Image Viewer
sudo pacman -S gpicview
gpicview  # Preferences > Automatically save
true

#=> GraphicsMagick
sudo pacman -S graphicsmagick

#=> gucharmap
sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

#=> guvcview
sudo pacman -S guvcview

#=> hosts
sudo cp $OSAB/etc/hosts/more /etc/hosts

#=> HPLIP 0 install
sudo pacman -S hplip

#=> HPLIP 1 remove
sudo pacman -Rs hplip

#=> HTMLHint
sudo pacman -S htmlhint

#=> img2pdf
sudo pacman -S img2pdf

#=> Go - Hugo
sudo pacman -S hugo

#=> Go - gopls
sudo pacman -S gopls

#=> java-commons-lang
sudo pacman -S java-commons-lang  # (for pdftk's functions)

#=> keepassxc 0 install
sudo pacman -S keepassxc

#=> keepassxc 1 remove
sudo pacman -Rs keepassxc

#=> libgphoto2
sudo pacman -S gphoto2  # brings in  libgphoto2  & gives cli access to it
sudo pacman -S gvfs-gphoto2  # for GNOME Files integration

#=> LibreCAD
sudo pacman -S librecad

#=> metis 1 remove
sudo pacman -Rs metis

#=> mpv
sudo pacman -S mpv
mkdir ~/.config/mpv/scripts

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

#=> nginx-mainline
sudo pacman -S nginx-mainline
cp /etc/nginx/nginx.conf $OSAB/etc/Nginx/pristine.conf
sudo cp $OSAB/etc/Nginx/jo.conf /etc/nginx/nginx.conf
sudo mkdir /usr/share/nginx/test

#=> nsxiv
sudo pacman -S nsxiv

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

#=> php
sudo pacman -S php
sudo sed -i 's#^;date.timezone =#date.timezone = Europe/Paris#' /etc/php/php.ini

#=> php-cgi
sudo pacman -S php-cgi
sudo mkdir /srv/http/fcgid-bin
sudo ln -s /usr/bin/php-cgi /srv/http/fcgid-bin/php-fcgid-wrapper

#=> peek
sudo pacman -S peek  # (GIF Screen Recorder)

#=> perl-image-exiftool
sudo pacman -S perl-image-exiftool

#=> perl-tk
sudo pacman -S perl-tk  # needed for  tlmgr -gui

#=> playerctl
sudo pacman -S playerctl  # for MPD

#=> pqiv
sudo pacman -S pqiv

#=> qalculate-gtk
sudo pacman -S qalculate-gtk

#=> qt5ct
# - Qt5 theme - allows better tab differentiation in CopyQ
sudo pacman -S qt5ct
#  QT_QPA_PLATFORMTHEME=qt5ct  is set in  ~/.xinitrc

#=> Quod Libet
sudo pacman -S quodlibet

#=> Rclone
sudo pacman -S rclone

#=> SANE
sudo pacman -S sane

#=> sqlitebrowser
sudo pacman -S sqlitebrowser

#=> sxiv
sudo pacman -S sxiv

#=> Vimiv
sudo pacman -S vimiv

#=> vlc
sudo pacman -S vlc

#=> Wike
sudo pacman -S wike

#=> xfd
sudo pacman -S xorg-xfd  # for checking fonts

#=> Xournal++
sudo pacman -S xournalpp  # for hand-writing pad

#=> yamllint
sudo pacman -S yamllint

#=> Zathura
sudo pacman -S zathura-pdf-mupdf
# zathurarc  symlinked in  $OSAB/nodes-set/jo-0.sh

