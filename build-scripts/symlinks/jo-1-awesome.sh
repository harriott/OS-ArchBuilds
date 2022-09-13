#!/bin/bash
# vim: set fdl=1:

# bash $bSc/symlinks/jo-1-awesome.sh

#=> awesome
ln -sf $machBld/jo/awesome/autorun.sh     ~/.config/awesome/autorun.sh
ln -sf $machBld/jo/awesome/rc.lua         ~/.config/awesome/rc.lua
ln -sf $machBld/jo/awesome/themes-zenburn ~/.config/awesome/zenburn

#=> Awesome WM Widgets 0
ln -sf $GHrUse/linux/wm-awesome/streetturtle-awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets
# r $GHrUse/linux/wm-awesome/streetturtle-awesome-wm-widgets

#=> Awesome WM Widgets 1 for Weather widget
ln -sf $GHrUse/CP/rxi-json.lua/json.lua ~/.config/awesome/json.lua

#=> notifies
ln -sf $machBld/jo/awesome/Firefox-notify-send.sh     ~/.config/awesome/Firefox-notify-send.sh
ln -sf $machBld/jo/awesome/Thunderbird-notify-send.sh ~/.config/awesome/Thunderbird-notify-send.sh

