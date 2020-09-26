#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=sh.shfold sw=2:

#=> 0 $MACHINE
if [ ! $ARCHBUILDS ]; then
  ARCHBUILDS=~/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb
fi

#=> 1 logged in as user
# action='cp --remove-destination'
action='ln -sf'

# sort this list by last use of "~":  :sort /,*\~/

$action $ARCHBUILDS/jo/Bash/bash_profile ~/.bash_profile
$action $MACHINE/jo/bashrc               ~/.bashrc
$action $ARCHBUILDS/Bash/inputrc         ~/.inputrc
$action $ARCHBUILDS/jo/xbindkeysrc       ~/.xbindkeysrc

find ~ -mindepth 1 -maxdepth 1 -type l -ls
echo "now  reboot  (and don't allow startx!)"

