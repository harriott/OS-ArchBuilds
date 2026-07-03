#!/bin/bash
# vim: set fdl=1:

# bash $OSAB/nodes-set/jo-2-Xfce.sh

read -p "Xfce  is installed?"

#=> Xfce
ln -sf $ABnj/wm/Xfce/terminal_startup.sh ~/.startup_terminal.sh  # es ~/.startup_terminal.sh
ln -sf $ABnm/jo/Conky.lua ~/.conkyrc  # es ~/.conkyrc
sudo ln -sf $ITccl/CP/WallpaperFlare /usr/share/backgrounds/xfce/WallpaperFlare

