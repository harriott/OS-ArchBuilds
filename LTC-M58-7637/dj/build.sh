#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

# from jo,  su dj  then  bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 X settings
ARCHBUILDS=/home/dj/.ArchBuilds
    MACHINE=$ARCHBUILDS/$machineName
echo $MACHINE
mkdir -p ~/.config/nvim
. $ARCHBUILDS/symlinks.sh
ln -sf $MACHINE/dj/xinitrc ~/.xinitrc
broot

