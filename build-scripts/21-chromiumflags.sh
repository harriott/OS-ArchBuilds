#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <this_script>

#=> Chromium --disable-gpu
ln -sf $MACHINE/jo/chromium-flags.conf ~/.config/chromium-flags.conf

find ~ -mindepth 2 -maxdepth 2 -type l -ls

