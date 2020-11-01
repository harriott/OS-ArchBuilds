#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=sh.shfold:

# set -v  # prints each statement here, including comments
# trap read debug  # puts a read request after each executable line

# #=> tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

# #=> Updates
# sudo pacman -Syu
# reboot if kernel updated !
# sudo find /etc -type f -name "*pacnew"
# sudo paccache -r  # reduce the pacman cache

#=> AURs
# auracle sync
# true

#==> aur-out-of-date
AURarray='/home/jo/Arch/AUR/AURs.txt'
# for i in ~/Arch/AUR/*; do echo $i; done > $AURarray
# sed -i 's#/home/jo/Arch/AUR/#1 #' $AURarray
# sed -i 's#1 cmus-notify#0 cmus-notify#' $AURarray
AURs=( `cat ~/Arch/AUR/AURs.txt`)
for (( i = 0; i < ${#AURs[@]}; i += 2 )); do
    if [ "${AURs[i]}" -ne 0 ]; then
        package=${AURs[i+1]}
        echo $package
        aur-out-of-date -local ~/Arch/AUR/$package/.SRCINFO
    fi
done

