#!/bin/bash
# vim: set fdl=1:

# source $OSAB/nodes-set/jo-2-Xfce.sh

read -p "Xfce  is installed?"

#=> Xfce
ln -sf $ABjo/wm/Xfce/terminal_startup.sh ~/.startup_terminal.sh  # es ~/.startup_terminal.sh
if [[ $host =~ HPEB840G3 ]]; then
    ln -sf $ABnm/jo/Conky.lua ~/.conkyrc
else
    ln -sf $ABnm/jo/Conky/Xfce.lua ~/.conkyrc
fi  # es ~/.conkyrc
sudo ln -sf $ITccl/CP/WallpaperFlare /usr/share/backgrounds/xfce/WallpaperFlare

