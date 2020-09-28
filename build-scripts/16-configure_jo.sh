#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

#=> 0 $ARCHBUILDS
[[ $ARCHBUILDS ]] || ARCHBUILDS=~/ArchBuilds

# #=> 0 broot br
# broot  # to load  br

# #=> 0 grab default xinitrc
# # need a removable drive mounted to /mm
# cp /etc/X11/xinit/xinitrc /mm/k8g-xinitrc
# echo "build your xinitrc"

# #=> 1 neovim configuration directory
# mkdir ~/.config/nvim

#=> provisional gitconfig
cp /mm/gitconfig ~/.gitconfig

