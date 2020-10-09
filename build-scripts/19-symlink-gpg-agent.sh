#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
    MACHINE=$ARCHBUILDS/AVT661
    # MACHINE=$ARCHBUILDS/sbMb
    Openbox=$ARCHBUILDS/jo/Openbox
    tmux=$ARCHBUILDS/jo/tmux

#=> 1 symlinks
ln -sf $ARCHBUILDS/jo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

