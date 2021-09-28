#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=sh.shfold:

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
sudo paccache -r  # reduce the pacman cache

#=> 1 AURs
auracle sync

