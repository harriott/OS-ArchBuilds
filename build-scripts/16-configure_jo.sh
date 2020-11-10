#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# #=> broot br
# broot  # to load  br

#=> CopyQ - ready for Pasting
CopyQ > F6 > Load > $ARCHBUILDS/jo/CopyQ-readyforPasting.ini

# #=> grab default xinitrc
# # need a removable drive mounted to /mm
# cp /etc/X11/xinit/xinitrc /mm/k8g-xinitrc
# echo "build your xinitrc"

# #=> neovim configuration directory
# mkdir ~/.config/nvim

#=> provisional gitconfig
cp /mm/gitconfig ~/.gitconfig

