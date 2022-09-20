#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/repeatable/Emacs.sh

set -e

#=> Emacs 0 directories
mkdir ~/.emacs.d
# e -la ~/.emacs.d

sudo mkdir /usr/share/fonts/EmacsAllTheIcons

#=> Emacs 1 backup
# find ~/.emacs.d -type l -ls  # shows tons from  straight, so not much point backing up to Dropbox

#=> Spacemacs 0 load
sd=~/.sm; [ -d $sd ] && sudo rm -r $sd; cp -r $ulLinux/Emacs/sm $sd
# e -dla ~/.sm
# HOME=~/.sm emacs &
# - still adjusts  ~/.emacs.d/.cache  and  creates  ~/.emacs.d~

#=> Spacemacs 1 backup
sd=$ulLinux/Emacs/sm; [ -d $sd ] && sudo rm -r $sd; cp -r ~/.sm $sd

