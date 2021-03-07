#!/bin/bash
# vim: fdl=1:

# bash <this_script>

# #=> Chromium 0 --disable-gpu - for nouveau
# ln -sf $MACHINE/jo/chromium-flags.conf ~/.config/chromium-flags.conf

# find ~ -mindepth 2 -maxdepth 2 -type l -ls

#=> Chromium 0 
ln -sf $MACHINE/jo/config-chromium-flags.conf ~/.config/chromium-flags.conf

find ~ -mindepth 2 -maxdepth 2 -type l -ls

#=> Chromium 1 remove chromium-flags.conf - for ATI
rm ~/.config/chromium-flags.conf

