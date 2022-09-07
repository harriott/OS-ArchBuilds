#!/bin/bash

# Joseph Harriott - Tue 06 Sep 2022

# run Emacs safely from .emacs.d shared on Dropbox
# ------------------------------------------------
# $emacs  should define a shared  .emacs.d  that needs protection

# (chmod 755 $ARCHBUILDS/jo/Emacs/ES/emacs_safely.sh)
# symlinked in my  $bSc/symlinks/jo-2-whenDropbox.sh
#  to provide my command  emacs_safely
#   used in  $Openbox/openbox/schema.pl

# Tests:
#  . $ARCHBUILDS/jo/Emacs/ES/emacs_safely.sh
#  echo lockTest > $llf

llf=$emacs/lock  # my creation
# l 2>/dev/null $llf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || l=$lh
fi

if [ -z $l ]; then
    echo $host > $llf
    if test $(find $emacs -name "* conflicted copy*" | wc -c) -eq 0; then
        emacs
    else
        notify-send -i /usr/share/icons/hicolor/16x16/apps/emacs.png -u critical 'Dropbox conflicts in $emacs.'
    fi
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/emacs.png -u critical "? $l > Emacs"
fi

