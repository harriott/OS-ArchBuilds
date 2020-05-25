#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# can be run alone, but I source this from  .../<user>/build.sh

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

# sort these lists by last use of "~":  :sort /,*\~/

#=> logged in as user
# action='cp --remove-destination'
action='ln -sf'

$action $ARCHBUILDS/jo/Bash/bash_profile   ~/.bash_profile
$action $MACHINE/jo/bashrc                 ~/.bashrc
$action $ARCHBUILDS/Bash/inputrc           ~/.inputrc
$action $ARCHBUILDS/jo/xbindkeysrc         ~/.xbindkeysrc

