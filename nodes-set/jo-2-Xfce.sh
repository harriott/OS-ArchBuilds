#!/bin/bash
# vim: set fdl=2:

# source $OSAB/nodes-set/jo-2-Xfce.sh

read -p "Xfce  is installed?"

#=> Xfce
if [[ $host =~ HPEB840G3 ]]; then
    ln -sf $ABnm/jo/Conky.lua ~/.conkyrc
else
    ln -sf $ABnm/jo/Conky/Xfce.lua ~/.conkyrc
fi  # es ~/.conkyrc

ln -sf $ABjo/wm/Xfce/terminal_startup.sh ~/.startup_terminal.sh  # es ~/.startup_terminal.sh

sudo ln -sf $ITccl/CP/WallpaperFlare /usr/share/backgrounds/xfce/WallpaperFlare

#==> notifyd
ns="$ABjo/wm/Xfce/notifyd.sh"; chmod 755 $ns; bs="/usr/local/bin/notifyd"; sudo ln -sf $ns $bs; es $bs
nd="/usr/share/applications/notifyd.desktop"; sudo ln -sf $ABjo/wm/Xfce/notifyd.desktop $nd; es $nd

