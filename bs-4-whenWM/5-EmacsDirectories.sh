#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-4-whenWM/5-EmacsDirectories.sh

set -e

#=> Emacs 0 directories
# these directories will be populated in  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

mkdir ~/.emacs.d
# e -la ~/.emacs.d

sudo mkdir /usr/share/fonts/EmacsAllTheIcons

#=> Emacs 1 backup
# find ~/.emacs.d -type l -ls  # shows tons from  straight, so not much point backing up to Dropbox

#=> Spacemacs 0 load
sd=~/.sm; [ -d $sd ] && sudo rm -r $sd; cp -r $ulLAb/Emacs/sm $sd
# e -dla ~/.sm
# HOME=~/.sm emacs &
# - still adjusts  ~/.emacs.d/.cache  and  creates  ~/.emacs.d~

#=> Spacemacs 1 backup
sd="$ulLAb/Emacs/sm"; [ -d $sd ] && sudo rm -r $sd; cp -r ~/.sm $sd

