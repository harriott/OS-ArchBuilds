#!/bin/bash
# vim: fdl=1 sw=2:

#=> 0 $ARCHBUILDS
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 make root symlinks
ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile  # sources root bashrc
  ln -sf $ARCHBUILDS/root/bashrc /root/.bashrc  # sources bashrc-generic
    ln -sf $ARCHBUILDS/Bash/bashrc-generic ~/.bashrc-generic

ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc /root/.inputrc

ln -sf $MACHINE/export-machine /root/.export-machine
  ln -sf $ARCHBUILDS/Bash/export-storage /root/.export-storage

ln -sf $ARCHBUILDS/root/nanorc ~/.config/nano/nanorc

ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> 2 list root symlinks
find /root -type l -ls  # doesn't show broken

