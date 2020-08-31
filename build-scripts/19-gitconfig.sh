#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

#=> gitconfig
rm ~/.gitconfig
if [ -d $DROPBOX ]; then # assume that my Dropbox is up
    ln -sf $ARCHBUILDS/jo/gitconfig ~/.gitconfig
else # use my  $ITstack/gitconfig  from a removable drive
    cp /mm/gitconfig ~/.gitconfig
fi

