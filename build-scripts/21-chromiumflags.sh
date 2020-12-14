#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <this_script>

#=> Chromium 0 --disable-gpu - for nouveau
ln -sf $MACHINE/jo/chromium-flags.conf ~/.config/chromium-flags.conf

find ~ -mindepth 2 -maxdepth 2 -type l -ls

#=> Chromium 1 remove chromium-flags.conf - for ATI
rm ~/.config/chromium-flags.conf

