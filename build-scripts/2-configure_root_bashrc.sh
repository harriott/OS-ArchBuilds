#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>

#=> 0 configure root Bash before Dropbox
ARCHBUILDS=/bs/ArchBuilds

cp $ARCHBUILDS/root/bash_profile   /root/.bash_profile
cp $ARCHBUILDS/root/bashrc         /root/.bashrc
cp $ARCHBUILDS/Bash/bashrc-generic /root/.bashrc-generic
cp $ARCHBUILDS/Bash/inputrc        /root/.inputrc

# #=> 1 deconfigure root Bash once Dropbox

# rm /root/.bash_profile
# rm /root/.bashrc
# rm /root/.bashrc-generic
# rm /root/.inputrc

# #=> 2 configure root Bash when Dropbox

# ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile
# # - sources  bashrc, which sources  bashrc-generic
# ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

