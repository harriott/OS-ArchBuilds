#!/bin/bash

# $OSAB/bs-3-intoWM/1-prepare.sh

set -v  # prints each statement here, including comments
shopt -s expand_aliases; alias pikn='pikaur -S --needed --keepbuilddeps'

pikn vorbis-tools  # for  oggenc

#=> Bluefish
pikn bluefish

#=> documenting
pikn ghostscript  # Ghostscript
pikn python-pylatexenc  # for render-markdown.nvim
pikn texlab  # for  ALE

pikn pandoc-cli  # Pandoc
[ -d ~/.pandoc/defaults ] || mkdir -p ~/.pandoc/defaults

#=> ebook - Calibre - qt6-multimedia-ffmpeg
pikn qt6-multimedia-ffmpeg

#=> ebook - Calibre
pikn calibre

#=> ebook - Foliate
pikn foliate

#=> file manage 0 Pádraig Brady's key for coreutils
# for jarun's advcp patch
gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9
# gpg -k DF6FD971306037D9

#=> file manage 1
pikn advcpmv  # for nnn -r
pikn cdrtools
pikn gvfs-dnssd  # GVFS-dnssd
pikn gvfs-mtp  # for accessing phone memory

#=> Gpick
pikn gpick  # for getting onscreen colours

#=> hw - CUPS services
pikn cups
sudo systemctl enable cups.service --now

#=> hw - generate 00-keyboard.conf
# XKEYBOARD-CONFIG(7)
# /usr/share/xkeyboard-config-2/rules/base.lst

# will need to restart X to get country key maps

# UK:
# sudo localectl --no-convert set-x11-keymap gb pc105

# Starting choice for  HPEB840G3x:
sudo localectl --no-convert set-x11-keymap fr pc105

cp /etc/X11/xorg.conf.d/00-keyboard.conf ~/00-keyboard.conf
# move later to  $machLg/etc/00-keyboard.conf

#=> hw - graphical card 0
pikn intel-media-driver  # for  VA-API
# pikn nvidia  # will need to reboot
# pikn nvidia-470xx-utils  # bring in  nvidia-470xx-dkms (not apparent from the AUR page)
# pikn nvidia-settings
pikn xorg-xrandr  # $OSL/QR
pikn xorg-xvidtune  # $OSL/QR

#=> hw - graphical card 1
pikn gpu-viewer  # Alt+F3 > GPU-Viewer
# pikn libva-mesa-driver  # for  VA-API  on  ATI Radeon HD 4870
pikn libva-utils  # provides  vainfo, for  VA-API checking

# Radeon ATI DDX driver:
# pikn xf86-video-ati  # should probably reboot

#=> hw - lshw
pikn lshw
# pikn lshw-git

# #=> hw - PulseAudio - mictray
# pikn mictray

# #=> hw - Solaar
# # for  Logitech Wireless Mouse M525
# pikn solaar
# sudo groupadd plugdev
# sudo usermod -aG plugdev jo  # need to re-login

#=> jdk-openjdk
pikn jdk-openjdk  # (removes  jre-openjdk) required for  :Mason

# #=> jre-openjdk
# pikn jre-openjdk  # required for  PDFtk

#=> networking
# bluetooth
gpasswd -a jo lp
pikn blueman bluez bluez-utils
systemctl enable bluetooth.service --now

pikn iptraf-ng

#=> PHP - composer
pikn composer

#=> pkgconf
pikn pkgconf

#=> WAN
pikn mailcap
pikn newsboat
pikn transmission-qt
pikn yt-dlp

#=> WM environment
pikn cbatticon
pikn conky gperf  # Conky
pikn copyq  # CopyQ
pikn dunst  # Dunst
pikn galculator
pikn gsimplecal

#=> xorg tools
pikn xdotool
pikn xorg-xdpyinfo
pikn xorg-xkill
pikn xorg-xev
pikn xorg-xkbprint  # $OSAB/bs-repeatable/grabKeybMaps.sh

