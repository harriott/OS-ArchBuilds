#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> AUR 0 AURs

# #==> qimgv-git
# cd ~/Arch/AUR
# sudo rm -r qimgv-git
# git clone https://aur.archlinux.org/qimgv-git.git
# cd qimgv-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

