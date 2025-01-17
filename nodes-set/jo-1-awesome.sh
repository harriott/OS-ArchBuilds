#!/bin/bash
# vim: set fdl=1:

# bash $OSAB/nodes-set/jo-1-awesome.sh

# e -la ~/.config/awesome

# #=> awesome
# ln -sf $machBld/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
# ln -sf $machBld/jo/awesome/rc.lua     ~/.config/awesome/rc.lua
# - last version was  $ulL/Arch/build/mb-AsusW202/jo/awesome/rc.lua

# t=~/.config/awesome/zenburn; rm -r $t
# ln -sf $machBld/jo/awesome/themes-zenburn ~/.config/awesome/zenburn

#=> Awesome WM Widgets 0
W0=$ITscc/awesome/streetturtle-awesome-wm-widgets
# rsync -inrtv --delete $DCGRs/d-unix/d-linux/d-wm-awesome/r-streetturtle-awesome-wm-widgets/ $W0
W1=~/.config/awesome/awesome-wm-widgets; rm -r $W1
ln -sf W0 $W1

#=> Awesome WM Widgets 1 for Weather widget
# $DCGRs/d-CP/d-encoding/r-rxi-json_lua/json.lua
ln -sf $ITscc/awesome/rxi-json.lua/json.lua ~/.config/awesome/json.lua

#=> awesome-capslock_widget
# $DCGRs/d-unix/d-linux/d-wm-awesome/r-stefano-m-awesome-capslock_widget/capslock.lua
ln -sf $ITscc/awesome/stefano-m-awesome-capslock_widget/capslock.lua ~/.config/awesome/capslock.lua

# #=> mute toggle
# a=/home/jo/.config/awesome/audio; [ -d $a ] && rm $a; ln -sf $machBld/jo/awesome/audio $a

# #=> notifies
# ln -sf $machBld/jo/awesome/Firefox-notify-send.sh     ~/.config/awesome/Firefox-notify-send.sh
# ln -sf $machBld/jo/awesome/Thunderbird-notify-send.sh ~/.config/awesome/Thunderbird-notify-send.sh

# #=> screenshot
# ln -sf $ABjo/wm/importScreenshot.sh ~/.config/awesome/importScreenshot.sh

#=> check
e -la ~/.config/awesome

