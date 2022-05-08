#!/bin/bash

#=> 0 get it
mkdir -p ~/.config/awesome/
sudo pacman -S awesome

#=> 1 my configurations
git clone https://github.com/streetturtle/awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets
ln -sf $MACHINE/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
ln -sf $MACHINE/jo/awesome/rc.lua ~/.config/awesome/rc.lua

