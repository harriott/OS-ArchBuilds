#!/bin/bash
# vim: fdl=1:

# urxvt launch
# $Obc/autostart/urxvtl+tmux.sh  sourced from  $Obc/autostart/autostart

#=> 1 urxvt
us="urxvt -geometry $urxvtGeometry"  # $machBld/jo/Bash/export-urxvt
$us -e sh -c "tmux new; bash" &

# #=> 2 neofetch
sleep 3  # for slow-starting  /mnt/WD30EZRZ/Dropbox
tmux send neofetch Enter

