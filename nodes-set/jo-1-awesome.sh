#!/bin/bash
# vim: set fdl=1:

# bash $OSAB/nodes-set/jo-1-awesome.sh

# e -la ~/.config/awesome

# #=> awesome
# ln -sf $machBld/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
# ln -sf $machBld/jo/awesome/rc.lua     ~/.config/awesome/rc.lua
# - last version was  $culL/Arch/build/mb-AsusW202/jo/awesome/rc.lua

# t=~/.config/awesome/zenburn; rm -r $t
# ln -sf $machBld/jo/awesome/themes-zenburn ~/.config/awesome/zenburn

#=> Awesome WM Widgets 0
ln -sf $cITcc/unix-linux/awesome-streetturtle-awesome-wm-widgets ~/.config/awesome/awesome-wm-widgets
# - $misc/GRs/needed.sh

#=> Awesome WM Widgets 1 for Weather widget
ln -sf $cITcc/CP/rxi-json_lua/json.lua ~/.config/awesome/json.lua  # $misc/GRs/needed.sh

#=> awesome-capslock_widget
ln -sf $cITcc/unix-linux/awesome-stefano-m-awesome-capslock_widget ~/.config/awesome/capslock.lua
# - $misc/GRs/needed.sh

# #=> mute toggle
# a=/home/jo/.config/awesome/audio; [ -d $a ] && rm $a; ln -sf $machBld/jo/awesome/audio $a

# #=> notifies
# ln -sf $machBld/jo/awesome/Firefox-notify-send.sh     ~/.config/awesome/Firefox-notify-send.sh
# ln -sf $machBld/jo/awesome/Thunderbird-notify-send.sh ~/.config/awesome/Thunderbird-notify-send.sh

# #=> screenshot
# ln -sf $ABjo/wm/importScreenshot.sh ~/.config/awesome/importScreenshot.sh

#=> check
e -la ~/.config/awesome

