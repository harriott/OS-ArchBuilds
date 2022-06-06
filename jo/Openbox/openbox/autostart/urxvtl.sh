#!/bin/bash
# vim: fdl=1:

# urxvt launch
# called from  $Openbox/openbox/autostart/autostart

# (chmod u+x $Openbox/openbox/autostart/urxvtl.sh)

#=> 1 urxvt
us="urxvt -geometry $urxvtGeometry"
# $us -e sh -c "tmux $tmuxStartSession; bash" &
$us -e sh -c "tmux new; bash" &
#  see $MACHINE/jo/Bash/export-urxvt

#=> 2 neofetch
sleep 3  # for slow-starting  /mnt/WD30EZRZ/Dropbox
tmux send neofetch Enter

