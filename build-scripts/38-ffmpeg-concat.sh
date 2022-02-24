#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

rAUR () { [[ -d $1 ]] && sudo rm -r $1; }

#=> nodejs-ffmpeg-concat
cd ~/Arch/AUR
git clone https://aur.archlinux.org/nodejs-ffmpeg-concat.git
cd nodejs-ffmpeg-concat
gvim PKGBUILD
makepkg -sic

#=> npm ffmpeg-concat
npm install npm@latest -g
which npm
npm install -g ffmpeg-concat

