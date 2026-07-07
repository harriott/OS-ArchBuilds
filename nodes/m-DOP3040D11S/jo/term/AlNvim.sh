#!/bin/bash
# vim: sw=2:

# launch Alacritty with Nvim
# --------------------------
# $ABnm/jo/term/Alacritty/AlNvim.sh
#  managed in my  $OSAB/nodes-set/jo-3-when_myDrA.sh
#  called by  $Obc/rc/rc-generic.xml

alacritty -o 'window.dimensions={columns=108,lines=76}' -o 'window.position={x=900,y=7}' -e sh -c 'bash -rcfile ~/.bashrc-AlNvim' & disown  # $ABjo/wm/term/bashrc-AlNvim

