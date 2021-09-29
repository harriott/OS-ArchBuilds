#!/bin/bash
# vim: fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

#=> 0 updates
sudo pacman -Syu
# check  nanorc  if  nano  updated & reboot if kernel updated !
sudo find /etc -type f -name "*pacnew"
true
# "^ ^ ^ ^ ^ ^ - pacnews ?"
true

#=> 1 /var/cache/pacman/pkg
if [ $$(hostname) = "LIP120s81A4" ]; then
  sudo pacman -Scc  # empty completely
else
  sudo paccache -r  # reduce to last 3 versions
fi

#=> 2 AURs
auracle sync

