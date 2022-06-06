#!/bin/bash

# Joseph Harriott, Wed 18 May 2022

# bash pulls.sh  update remote tmux plugins

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

