#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
    # ITstack=$DROPBOX/JH/IT_stack
    ITstack=/mm/IT_stack  # needs a removable drive mounted to /mm
    MACHINE=$ARCHBUILDS/sbMb

#=> 1 symlinks for Openbox
ln -sf $ITstack/gitconfig  ~/.gitconfig
ln -sf $MACHINE/jo/xinitrc ~/.xinitrc

