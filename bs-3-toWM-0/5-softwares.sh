#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> CUPS service
# sudo pacman -S cups
# sudo systemctl enable cups.service --now

# #=> fonts - gnu-free-fonts
# sudo pacman -S gnu-free-fonts

# #=> fonts - ttf-dejavu
# sudo pacman -S ttf-dejavu

# #=> gdown
# pipx install gdown

# #=> Gpick
# sudo pacman -S gpick  # for colours

#=> jre-openjdk
sudo pacman -S jre-openjdk  # required for  PDFtk

# #=> libva-utils - for sbMb
# sudo pacman -S libva-utils  # provides  vainfo, for  VA-API checking

#=> newsboat
sudo pacman -S newsboat

# #=> noto-fonts-cjk
# # for  $MD4PDF/GNULinux/md4pdf.sh
# sudo pacman -S noto-fonts-cjk
# true

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

# #=> yt-dlp
# sudo pacman -S yt-dlp

