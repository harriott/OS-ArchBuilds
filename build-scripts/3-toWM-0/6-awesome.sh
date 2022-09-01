#!/bin/bash
# vim: set fdl=1:

#=> 0 get
mkdir -p ~/.config/awesome/
sudo pacman -S awesome

#=> 1 symlinks 0
ln -sf $machBld/jo/awesome/autorun.sh     ~/.config/awesome/autorun.sh
ln -sf $machBld/jo/awesome/rc.lua         ~/.config/awesome/rc.lua
ln -sf $machBld/jo/awesome/themes-zenburn ~/.config/awesome/zenburn

#=> 1 symlinks 1 notify-send
ln -sf $machBld/jo/awesome/Firefox-notify-send.sh     ~/.config/awesome/Firefox-notify-send.sh
  sudo ln -s $vimfiles/notify-send-Firefox_tab.sh     /usr/local/bin/nsBt

ln -sf $machBld/jo/awesome/Thunderbird-notify-send.sh ~/.config/awesome/Thunderbird-notify-send.sh

#=> 1 symlinks 2 Awesome WM Widgets 0
# git clone https://github.com/streetturtle/awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets
ln -sf $GHrUse/linux/wm-awesome/streetturtle-awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets

#=> 1 symlinks 2 Awesome WM Widgets 1 for  Weather widget
ln -sf $GHrUse/CP/rxi-json.lua/json.lua ~/.config/awesome/json.lua
# wget -P ~/.config/awesome/ https://raw.githubusercontent.com/rxi/json.lua/master/json.lua

