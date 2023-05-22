#!/bin/bash

# see what directories to tidy

mapfile -t AURs < <(ls ~/Arch/AUR)
source $OSAB/Bash/xcol.sh
for AUR in "${AURs[@]}"; do
    echo; echo; echo "$AUR"
    pacman -Qs $AUR | xcol $AUR
done
echo; echo; echo 'now scroll up and look for unused packages'


