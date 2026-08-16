#!/bin/bash

# see what directories to tidy:  source $OSAB/bs-repeatable/AURs-list.sh

for AURd in ~/.cache/paru/clone ~/.cache/traur/git ~/.local/share/pikaur/aur_repos ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make; do
    # echo "${tpf5b}$AURd${tpfn}"
    mapfile -t AURs < <(ls $AURd)
    for AUR in "${AURs[@]}"; do
        # echo; echo; echo "$AURd $AUR"
        # pacman -Qs $AUR | xcol $AUR
        # pikaur -Q $AUR
        pQs0=$(pacman -Qs $AUR)
        pQs1=${pQs0:6}
        echo "$AURd/$AUR $(echo $pQs1 | cut -f2 -w)" | xcol $AUR
    done
done
echo; echo 'now scroll up and look for unused packages'

