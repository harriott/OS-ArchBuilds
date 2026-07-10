#!/bin/bash
# vim: sw=2:

# launch Alacritty with Nvim
# --------------------------
# $ABno/m-HPEB840G3x/hi-jo/term/AlNvim.sh
#  managed in my  $OSAB/nodes-set/jo-3-when_myDrA.sh

# 1366x768 screen:
alacritty -o 'window.dimensions={columns=108,lines=67}' -o 'window.position={x=800,y=7}' -e sh -c 'bash -rcfile ~/.bashrc-AlNvim' & disown  # $ABjo/wm/term/bashrc-AlNvim

