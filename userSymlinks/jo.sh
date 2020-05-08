#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash -x <thisfile>.sh
# can be run alone, but I source this from  $Openbox/symlinks.sh

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

# sort these lists by last use of "~":  :sort /,*\~/

#=> logged in as jo
# action='cp --remove-destination'
action='ln -sf'

. $ARCHBUILDS/userSymlinks/all.sh
ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh
ln -sf $MACHINE/jo/xinitrc ~/.xinitrc

