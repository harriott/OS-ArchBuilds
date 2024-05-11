#!/bin/bash
# vim: set fdl=1:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 awesome - for AsusW202
# mkdir -p ~/.cache/awesome
# mkdir -p ~/.config/awesome
# sudo pacman -S awesome

#=> 1 $DCGRs - needed until Dropbox
# see  $Bash/export-jo
rsync -iLrtv --delete --modify-window=1 /bs/GHrUse/ $DCGRs

