#!/bin/bash
# vim: set et tw=0:

git clone https://github.com/CrispyConductor/tmux-copy-toolkit
sed -i 's/x S/x e/' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux

git clone https://github.com/tmux-plugins/tmux-resurrect

git clone https://github.com/tmux-plugins/tmux-logging  # easy logging and screen capturing

git clone https://github.com/tmux-plugins/tmux-prefix-highlight.git

