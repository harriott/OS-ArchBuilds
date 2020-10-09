#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold sw=2:

#=> 0 $MACHINE before Dropbox
ARCHBUILDS=~/ArchBuilds
  MACHINE=$ARCHBUILDS/sbMb

# #=> 0 $MACHINE when Dropbox
# export ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
#   export MACHINE=$ARCHBUILDS/AVT661

#=> 1 logged in as user
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile             ~/.bash_profile
ln -sf $MACHINE/jo/bashrc             ~/.bashrc
ln -sf $MACHINE/jo/gitconfig          ~/.gitconfig # points to $ITstack/gitconfig
ln -sf $ARCHBUILDS/Bash/inputrc       ~/.inputrc
ln -sf $ARCHBUILDS/jo/xbindkeysrc     ~/.xbindkeysrc
ln -sf $MACHINE/jo/xinitrc            ~/.xinitrc # which calls $MACHINE/jo/Xresources
ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh

#=> 2 if first build
find ~ -mindepth 1 -maxdepth 1 -type l -ls
echo "now  reboot  (and don't allow startx!)"

