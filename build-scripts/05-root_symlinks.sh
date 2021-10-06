#!/bin/bash
# vim: fdl=1:

#=> 0 before jo $Bash/bash_profile

ARCHBUILDS=/ArchBuilds

#=> 2 root symlinks

ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile  # sources root bashrc
ln -sf $ARCHBUILDS/root/bashrc /root/.bashrc  # sources bashrc-generic

ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

