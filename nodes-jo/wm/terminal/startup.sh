#!/bin/bash
# vim: fdl=2:

# terminal launch
# bash $ABjo/wm/terminal/startup.sh
#  sourced from  $Obc/autostart
#  symlinked in  $OSAB/nodes-Bash/bashrc-generic

#=> 1 terminal
# $machBld/jo/Bash/exportWS

#==> Alacritty
alacritty -o $Awd -o $Awp -e sh -c "tmux new; bash" & disown
# alacritty -o $Awd -o $Awp -e sh -c "tmux a" & disown  # if crashed

# #==> urxvt
# urxvt -geometry $urxvtGeometry -e sh -c "tmux new; bash" &
# # urxvt -geometry $urxvtGeometry -e sh -c "tmux a" &  # if crashed

#=> 2 neofetch
sleep 3  # for slow-starting  /mnt/WD30EZRZ/Dropbox
tmux send neofetch Enter

