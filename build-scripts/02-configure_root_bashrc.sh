#!/bin/bash
# vim: fdc=1 fdl=1 fdm=expr ft=shbuild:

# bash <thisfile>

#=> 0 configure root Bash before Dropbox
ARCHBUILDS=/bs/ArchBuilds

cp $ARCHBUILDS/root/bash_profile   /root/.bash_profile  # sources  bashrc
cp $ARCHBUILDS/root/bashrc         /root/.bashrc        # sources  bashrc-generic
cp $ARCHBUILDS/Bash/bashrc-generic /root/.bashrc-generic
cp $ARCHBUILDS/Bash/inputrc        /root/.inputrc

# #=> 1 deconfigure root Bash once Dropbox

# rm /root/.bashrc-generic
# rm /root/.inputrc

# #=> 2 configure root Bash when Dropbox

# ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

