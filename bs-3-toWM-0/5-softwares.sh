#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> composer
sudo pacman -S composer

# #=> CUPS service
# sudo pacman -S cups
# sudo systemctl enable cups.service --now

# #=> fonts - gnu-free-fonts
# sudo pacman -S gnu-free-fonts

#=> fonts - noto-fonts
sudo pacman -S noto-fonts  # for  Firefox  text and  Xfce  window labels

# #=> fonts - noto-fonts-cjk
# sudo pacman -S noto-fonts-cjk  # for  $MD4PDF/GNULinux/md4pdf.sh

#=> fonts - Source Code Pro
sudo pacman -S adobe-source-code-pro-fonts  # for  Source Code Pro

# #=> fonts - ttf-dejavu
# sudo pacman -S ttf-dejavu

#=> fonts - ttf-hack
sudo pacman -S ttf-hack

#=> fonts - ttf-opensans
sudo pacman -S ttf-opensans

# #=> gdown
# pipx install gdown

# #=> Gpick
# sudo pacman -S gpick  # for colours

#=> jdk-openjdk
sudo pacman -S jdk-openjdk  # (removes  jre-openjdk) required for  :Mason

#=> jre-openjdk
sudo pacman -S jre-openjdk  # required for  PDFtk

# #=> libva-utils - for sbMb
# sudo pacman -S libva-utils  # provides  vainfo, for  VA-API checking

#=> newsboat
sudo pacman -S newsboat

#=> npm ffmpeg-concat 0 install
npm i -g ffmpeg-concat  # takes time to complete

#=> npm ffmpeg-concat 1 uninstall
npm un -g ffmpeg-concat

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

