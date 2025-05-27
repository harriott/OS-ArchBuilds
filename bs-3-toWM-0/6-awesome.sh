#!/bin/bash
# vim: set fdl=1:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 awesome - for AsusW202
# mkdir -p ~/.cache/awesome
# mkdir -p ~/.config/awesome
# sudo pacman -S awesome

#=> 1 $cGRs - needed until Dropbox
# see  $AjB/export-jo
rsync -iLrtv --delete --modify-window=1 /bs/GHrUse/ $cGRs

