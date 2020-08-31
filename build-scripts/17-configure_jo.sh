#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

#=> 0 $MACHINE
[[ $ARCHBUILDS ]] || ARCHBUILDS=~/ArchBuilds

# #=> 0 broot br
# broot  # to load  br

# #=> 0 grab default xinitrc
# # need a removable drive mounted to /mm
# cp /etc/X11/xinit/xinitrc /mm/k8g-xinitrc
# echo "build your xinitrc"

# #=> 1 neovim configuration 1
# mkdir ~/.config/nvim

#=> 1 neovim configuration 2
ln -sf $ARCHBUILDS/jo/Vim/init.vim ~/.config/nvim/init.vim

#=> 1 some symlinks
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $ARCHBUILDS/jo/Vim/gvimrc      ~/.gvimrc
ln -sf $ARCHBUILDS/jo/Vim/vimrc       ~/.vimrc
ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh

