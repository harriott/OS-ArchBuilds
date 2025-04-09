#!/bin/bash
# vim: sw=2:

# launch Alacritty with Nvim
# --------------------------
# calls  $Openbox/bashrc_for_Alacritty-nvim.sh

# chmod 755 $machBld/jo/openbox/AlacrittyNvim.sh
# symlinked in  $OSAB/nodes/set/jo-2-whenWM-0.sh
# pb ~/.config/openbox/AlacrittyNvim.sh
# called by  $Obc/rc/rc-generic.xml

alacritty -o 'window.dimensions={columns=108,lines=76}' -o 'window.position={x=778,y=7}' -e sh -c 'bash -rcfile ~/.bashrc-An' & disown

