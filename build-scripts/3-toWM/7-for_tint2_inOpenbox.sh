#!/bin/bash

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

#=> snixembed-git
# to get Dropbox icon down into tint2
gdAUR snixembed-git
gvim -c "silent! /https:\/\/git.sr.ht\/~steef\/snixembed" PKGBUILD
makepkg -sic  # takes a while

#=> tint2rc
nvim -O /etc/xdg/tint2/tint2rc ~/.config/tint2/tint2rc $Openbox/tint2rc -c "windo difft"
killall -SIGUSR1 tint2  # reloads tint2rc
# - should also be done if  tint2  has been updated

