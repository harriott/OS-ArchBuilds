#!/bin/bash

# Joseph Harriott - Sun 04 Sep 2022

# run Emacs safely from .emacs.d shared on Dropbox
# ------------------------------------------------

# (chmod 755 $ARCHBUILDS/jo/Emacs/emacs_safely.sh)
# symlinked in my  $bSc/4-whenWM/symlinks.sh
#  pb /usr/local/bin/emacs_safely

# Tests:
#  . $ARCHBUILDS/jo/ES/emacs_safely.sh
#  echo lockTest > $llf
#  r $emacs

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

