#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> broot br
# broot  # to load  br

# #=> configure vims
# # gVim
# cd ~
# git clone git@github.com:harriott/vimfiles.git
# mv vimfiles .vim
# cd .vim/pack/ArchLinux

# # neovim
# mkdir ~/.config/nvim

# now you need to run your  clones.sh

