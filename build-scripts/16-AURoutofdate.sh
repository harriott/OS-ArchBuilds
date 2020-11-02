#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=sh.shfold:

AURarray='/home/jo/Arch/AUR/AURs.txt'
for i in ~/Arch/AUR/*; do echo $i; done > $AURarray
sed -i 's#/home/jo/Arch/AUR/#1 #' $AURarray
sed -i 's#1 cmus-notify#0 cmus-notify#' $AURarray
AURs=( `cat ~/Arch/AUR/AURs.txt`)
for (( i = 0; i < ${#AURs[@]}; i += 2 )); do
    if [ "${AURs[i]}" -ne 0 ]; then
        package=${AURs[i+1]}
        echo $package
        aur-out-of-date -local ~/Arch/AUR/$package/.SRCINFO
    fi
done

