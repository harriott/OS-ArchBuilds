#!/bin/bash

# see what directories to tidy

for AURd in AUR AURdev-clone AURdev-make; do
    # echo "${tpf5b}$AURd${tpfn}"
    mapfile -t AURs < <(ls ~/Arch/$AURd)
    source $OSAB/Bash/xcol.sh
    for AUR in "${AURs[@]}"; do
        echo; echo; echo "$AURd $AUR"
        pacman -Qs $AUR | xcol $AUR
    done
done
echo; echo; echo 'now scroll up and look for unused packages'

