#!/bin/bash
# vim: fdl=1 sw=2:

#=> 0 ARCHBUILDS
ARCHBUILDS=/ArchBuilds
AB=/mnt/SD480GSSDPlus/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
[[ -d $AB ]] && ARCHBUILDS=$AB

#=> 1 test
echo $ARCHBUILDS

#=> 2 root symlinks
ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile  # sources root bashrc
  ln -sf $ARCHBUILDS/root/bashrc /root/.bashrc  # sources bashrc-generic

ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc /root/.inputrc

ln -sf $MACHINE/export-machine /root/.export-machine
  ln -sf $ARCHBUILDS/Bash/export-storage /root/.export-storage

ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

