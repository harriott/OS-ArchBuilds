#!/bin/bash
# vim: fdl=1:

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

# #=> for fonts
# cfA=/usr/share/fonts/copiedForArch
# [[ $cfA ]] && rm -r $cfA; ln -s $IThandy/fonts-forArch $cfA
# exa -la /usr/share/fonts

