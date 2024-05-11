#!/bin/bash
# vim: fdl=2:

# terminal launch
# bash $Obc/autostart/terminal_launch.sh  sourced from  $Obc/autostart/autostart

#=> 1 terminal
# $machBld/jo/Bash/export-terminal

#==> Alacritty
alacritty -o $Awd -o $Awp -e sh -c "tmux new; bash" & disown
# - see  $machBld/jo/Bash/export-terminal
# alacritty -o $Awd -o $Awp -e sh -c "tmux a" & disown  # if crashed

# #==> urxvt
# urxvt -geometry $urxvtGeometry -e sh -c "tmux new; bash" &
# # urxvt -geometry $urxvtGeometry -e sh -c "tmux a" &  # if crashed

#=> 2 neofetch
sleep 3  # for slow-starting  /mnt/WD30EZRZ/Dropbox
tmux send neofetch Enter

