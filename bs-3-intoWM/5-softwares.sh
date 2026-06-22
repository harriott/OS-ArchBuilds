#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> Avahi & CUPS services
# sudo pacman -S cups
# sudo systemctl enable avahi-daemon.service --now
# sudo systemctl enable cups.service --now

# #=> Gpick
# sudo pacman -S gpick  # for getting onscreen colours

#=> jdk-openjdk
sudo pacman -S jdk-openjdk  # (removes  jre-openjdk) required for  :Mason

#=> jre-openjdk
sudo pacman -S jre-openjdk  # required for  PDFtk

# #=> libva-utils - for sbMb
# sudo pacman -S libva-utils  # provides  vainfo, for  VA-API checking

# #=> newsboat
# sudo pacman -S newsboat

#=> PHP - composer
sudo pacman -S composer

# #=> python-pymupdf
# sudo pacman -S python-pymupdf  # for  pdfCropMargins

# #=> Solaar
# # for  Logitech Wireless Mouse M525
# sudo pacman -S solaar
# sudo groupadd plugdev
# sudo usermod -aG plugdev jo  # need to re-login

#=> TexLab
# for  ALE
sudo pacman -S texlab

# #=> vorbis-tools
# # for  oggenc
# sudo pacman -S vorbis-tools

#=> xkill
sudo pacman -S xorg-xkill

# #=> yt-dlp
# sudo pacman -S yt-dlp

