#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> configure vims
# # gVim
# cd ~
# git clone git@github.com:harriott/vimfiles.git
# mv vimfiles .vim
# cd .vim/pack/ArchLinux

# now you need to run your  clones.sh

# #=> time correction
xdg-open http://time.is/ # to see how much stray
sudo ntpd -qg
sudo hwclock --systohc

