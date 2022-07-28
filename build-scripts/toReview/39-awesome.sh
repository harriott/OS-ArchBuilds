#!/bin/bash
# vim: set fdl=1:

#=> 0 get it
mkdir -p ~/.config/awesome/
sudo pacman -S awesome

#=> 1 my configurations
git clone https://github.com/streetturtle/awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets
ln -sf $MACHINE/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
ln -sf $MACHINE/jo/awesome/Firefox-notify-send.sh ~/.config/awesome/Firefox-notify-send.sh
ln -sf $MACHINE/jo/awesome/rc.lua ~/.config/awesome/rc.lua
ln -sf $MACHINE/jo/awesome/themes-zenburn ~/.config/awesome/zenburn
ln -sf $MACHINE/jo/awesome/Thunderbird-notify-send.sh ~/.config/awesome/Thunderbird-notify-send.sh
sudo ln -s $HOME/.vim/notify-send-Firefox_tab.sh /usr/local/bin/nsBt
wget -P ~/.config/awesome/ https://raw.githubusercontent.com/rxi/json.lua/master/json.lua

