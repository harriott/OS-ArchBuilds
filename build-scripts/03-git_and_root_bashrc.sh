#!/bin/bash
# vim: fdc=1 fdl=1 fdm=expr ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Git

#==> 1 Git
pacman -S git

#==> 2 clone ArchBuilds
cd /
git clone https://github.com/harriott/ArchBuilds.git
ls /ArchBuilds

#=> root Bash

#==> 0 configure root Bash before Dropbox
ARCHBUILDS=/ArchBuilds

cp $ARCHBUILDS/root/bash_profile   /root/.bash_profile  # sources  bashrc
cp $ARCHBUILDS/root/bashrc         /root/.bashrc        # sources  bashrc-generic
cp $ARCHBUILDS/Bash/bashrc-generic /root/.bashrc-generic
cp $ARCHBUILDS/Bash/inputrc        /root/.inputrc

ls -a /root

# #==> 1 deconfigure root Bash once Dropbox

# rm /root/.bashrc-generic
# rm /root/.inputrc

# #==> 2 configure root Bash when Dropbox

# ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

