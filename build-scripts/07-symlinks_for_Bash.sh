#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

ARCHBUILDS=~/Arch/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb

# sort these lists by last use of "~":  :sort /,*\~/

#=> logged in as user
# action='cp --remove-destination'
action='ln -sf'

$action $ARCHBUILDS/jo/Bash/bash_profile   ~/.bash_profile
$action $MACHINE/jo/bashrc                 ~/.bashrc
$action $ARCHBUILDS/Bash/inputrc           ~/.inputrc
$action $ARCHBUILDS/jo/xbindkeysrc         ~/.xbindkeysrc
find ~ -type l -ls
reboot  # don't allow startx!

