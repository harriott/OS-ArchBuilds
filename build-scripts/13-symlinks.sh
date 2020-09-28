#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold sw=2:

#=> 0 $MACHINE before Dropbox
ARCHBUILDS=~/ArchBuilds
  MACHINE=$ARCHBUILDS/sbMb

#=> 0 $MACHINE when Dropbox
export ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
  export MACHINE=$ARCHBUILDS/AVT661

#=> 1 logged in as user
# action='cp --remove-destination'
action='ln -sf'

# sort this list by last use of "~":  :sort /,*\~/

$action $ARCHBUILDS/jo/Bash/bash_profile ~/.bash_profile
$action $MACHINE/jo/bashrc               ~/.bashrc
$action $ARCHBUILDS/Bash/inputrc         ~/.inputrc
$action $ARCHBUILDS/jo/xbindkeysrc       ~/.xbindkeysrc

#=> 2 if first build
find ~ -mindepth 1 -maxdepth 1 -type l -ls
echo "now  reboot  (and don't allow startx!)"

