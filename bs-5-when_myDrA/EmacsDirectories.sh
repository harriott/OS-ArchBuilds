#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-5-when_myDrA/EmacsDirectories.sh

set -e

#=> Emacs 1 backup
# find ~/.emacs.d -type l -ls  # shows tons from  straight, so not much point backing up to Dropbox

#=> Spacemacs 0 load
sd=~/.sm; [ -d $sd ] && sudo rm -r $sd; cp -r $ITculLAb/Emacs/sm $sd
# e -dla ~/.sm/*
# HOME=~/.sm emacs &
# - still adjusts  ~/.emacs.d/.cache  and  creates  ~/.emacs.d~

# #=> Spacemacs 1 backup
# sd="$ITculLAb/Emacs/sm"; [ -d $sd ] && sudo rm -r $sd; cp -r ~/.sm $sd  # & see  $ITculLAb/Emacs/readme.md

