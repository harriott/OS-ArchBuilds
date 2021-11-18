#!/bin/bash
# vim: fdl=1:

# (chmod u+x $Openbox/openbox/autostart/urxvtl.sh)

# urxvt launch - to be called from  $Openbox/openbox/autostart/autostart

#=> 1 urxvt
us="urxvt -geometry $urxvtGeometry"
$us -e sh -c "tmux $tmuxStartSession; bash" &
# see $MACHINE/jo/Bash/export-urxvt

#=> 2 neofetch
sleep 2; tmux send neofetch Enter

