#!/bin/bash
# vim: fdl=1 fdm=expr ft=sh.shfold:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Git 1 install
# pacman -S git

# #=> 0 Git 2 clone ArchBuilds
# cd /
# git clone https://github.com/harriott/ArchBuilds.git
# ls /ArchBuilds

#=> 1 root symlinks 0 $ARCHBUILDS
export ARCHBUILDS=/ArchBuilds  # provisional

#==> when Dropbox (grabbed from jo's xinitrc)
export ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds

#=> 1 root symlinks 1 symlinks
ln -sf $ARCHBUILDS/AVT661/root-bash_profile /root/.bash_profile
# - sources root bashrc, which sources bashrc-generic

ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

