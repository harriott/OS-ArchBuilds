#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

#=> for fonts
cfA=/usr/share/fonts/copiedForArch
[[ $cfA ]] && rm -r $cfA; ln -s $Technos/IT0-fonts-copiedForArch $cfA

#=> Vim
rm -r ~/.vim; ln -s $ITstack/vimfiles ~/.vim

