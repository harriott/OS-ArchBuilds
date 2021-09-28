#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

#=> symlinks for Openbox itself
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $Openbox/openbox/schema.pl ~/.config/obmenu-generator/schema.pl
ln -sf $Openbox/openbox/autostart ~/.config/openbox/autostart
ln -sf $Openbox/openbox/menu.xml  ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc.xml    ~/.config/openbox/rc.xml
ln -sf $ARCHBUILDS/jo/Openbox/cmusqueue.sh ~/Arch/cmusqueue.sh

find ~ -mindepth 3 -maxdepth 3 -type l -ls

