#!/bin/bash
# vim: sw=2:

# launch Alacritty with Nvim
# --------------------------
# calls  $Openbox/bashrc_for_Alacritty-nvim.sh

# chmod 755 $machBld/jo/openbox/AlacrittyNvim.sh
# symlinked in  $OSAB/nodes/set/jo-2-whenWM-0.sh
# pb ~/.config/openbox/AlacrittyNvim.sh
# called by  $Obc/rc/rc.xml

alacritty -o 'window.dimensions={columns=120,lines=64}' -o 'window.position={x=700,y=2}' -e sh -c 'bash -rcfile ~/.bashrc-An' & disown

