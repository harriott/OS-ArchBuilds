#!/bin/bash

# (chmod u+x $Openbox/openbox/autostart/urxvtl.sh)

# urxvt launch - to be called from  $Openbox/openbox/autostart/autostart

us="urxvt -geometry $urxvtGeometry"  # see $MACHINE/jo/export-machine
$us -e sh -c "tmux new -s 1; bash" &  # urxvt containing tmux session 1
sleep 2; tmux send neofetch Enter

# optionally run something in tmux
[ -f $MACHINE/jo/urxvtl.sh ] && .  $MACHINE/jo/urxvtl.sh

