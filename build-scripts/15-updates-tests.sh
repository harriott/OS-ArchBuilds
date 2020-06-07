#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

#=> Updates
sudo pacman -Syu
# sudo pacman -Syyuu
# reboot if kernel updated !
sudo find /etc -type f -name "*pacnew"
auracle sync
true

