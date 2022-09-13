#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/repeatable/Emacs.sh

set -e

mkdir ~/.emacs.d
# e -la ~/.emacs.d

#=> Emacs 0 configure
ln -sf $onGH/misc/Emacs/custom.el ~/.emacs.d/custom.el
ln -sf $onGH/misc/Emacs/early-init.el ~/.emacs.d/early-init.el
ln -sf $onGH/misc/Emacs/init.el ~/.emacs.d/init.el
ln -sf $onGH/misc/Emacs/lisp ~/.emacs.d/lisp
ln -sf $core/TextNotes/TN/Emacs/diary ~/.emacs.d/diary
ln -sf $GHrUse/emacs/TobiasZawada-md-outline-list ~/.emacs.d/TobiasZawada-md-outline-list
# e -la ~/.emacs.d/

#=> Emacs 1 backup
# find ~/.emacs.d -type l -ls  # shows tons from  straight, so not much point backing up to Dropbox

#=> Spacemacs 0 load
sd=~/.sm; [ -d $sd ] && sudo rm -r $sd; cp -r $ulLinux/Emacs/sm $sd
# e -dla ~/.sm
# HOME=~/.sm emacs &
# - still adjusts  ~/.emacs.d/.cache  and  creates  ~/.emacs.d~

#=> Spacemacs 1 backup
sd=$ulLinux/Emacs/sm; [ -d $sd ] && sudo rm -r $sd; cp -r ~/.sm $sd

