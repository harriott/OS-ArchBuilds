#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> CUPS service
# sudo pacman -S cups
# sudo systemctl enable cups.service --now

# #=> devtools
# # mkdir /mnt/SD480GSSDPlus/chroot
# sudo pacman -S devtools  # for package managers

#=> dictd
sudo pacman -S dictd

# #=> diskonaut
# sudo pacman -S diskonaut

# #=> Dust
# # (after Rust Toolchain)
# sudo pacman -S dust

# #=> fonts - gnu-free-fonts
# sudo pacman -S gnu-free-fonts

# #=> fonts - ttf-dejavu
# sudo pacman -S ttf-dejavu

# #=> Gpick
# sudo pacman -S gpick

#=> grammalecte
sudo pacman -S grammalecte

# #=> libsixel
# sudo pacman -S libsixel  # for  sixel  graphics

# #=> libva-utils - for sbMb
# sudo pacman -S libva-utils  # provides  vainfo, for  VA-API checking

# #=> noto-fonts-cjk
# # for  $MD4PDF/GNULinux/md4pdf.sh
# sudo pacman -S noto-fonts-cjk
# true

# #=> npm 0 configure npm-global
# mkdir ~/.npm-global
# npm config set prefix=$HOME/.npm-global

# #=> npm 1 cspell
# npm i -g cspell

#=> npm 1 ffmpeg-concat
npm i -g ffmpeg-concat  # takes time to complete

# #=> npm 2 wikit
# npm i -g wikit

#=> pdfCropMargins

# #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs  # can't recall why...

# #=> pip
# sudo pacman -S python-pip

# #=> python-pymupdf
# sudo pacman -S python-pymupdf  # for  pdfCropMargins

# #=> Solaar
# # for  Logitech Wireless Mouse M525
# sudo pacman -S solaar
# sudo groupadd plugdev
# sudo usermod -aG plugdev jo  # need to re-login

# #=> ttf-croscore
# sudo pacman -S ttf-croscore

# #=> vorbis-tools
# # for  oggenc
# sudo pacman -S vorbis-tools

# #=> whipper
# sudo pacman -S whipper  # CD ripper

# #=> yt-dlp
# sudo pacman -S yt-dlp

