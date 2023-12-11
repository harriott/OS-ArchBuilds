#!/bin/bash

# Joseph Harriott, Thu 23 Nov 2023

# bash $tmx/plugins/pulls.sh  update remote tmux plugins

find . -maxdepth 1 -mindepth 1 -type d | while read pluginName; do
    echo ${tpf3b}$pluginName${tpfn}
    if [[ $pluginName =~ tmux-copy-toolkit ]]; then
        rm -r $pluginName
        git clone https://github.com/CrispyConductor/tmux-copy-toolkit
        . tct-tweak.sh
    else
        cd $pluginName
        git pull origin master
        cd ..
    fi
done

