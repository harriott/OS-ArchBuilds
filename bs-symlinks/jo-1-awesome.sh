#!/bin/bash
# vim: set fdl=1:

# bash $OSAB/bs-symlinks/jo-1-awesome.sh

# e -la ~/.config/awesome

# #=> awesome
# ln -sf $machBld/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
# ln -sf $machBld/jo/awesome/rc.lua     ~/.config/awesome/rc.lua
# - last version was  $ITstack\unix_like-linux\Arch\old\mb-AsusW202\jo\awesome\rc.lua

# t=~/.config/awesome/zenburn; rm -r $t
# ln -sf $machBld/jo/awesome/themes-zenburn ~/.config/awesome/zenburn

#=> Awesome WM Widgets 0
t=~/.config/awesome/awesome-wm-widgets; rm -r $t
ln -sf $ITscc/awesome/streetturtle-awesome-wm-widgets $t

#=> Awesome WM Widgets 1 for Weather widget
ln -sf $ITscc/awesome/rxi-json.lua/json.lua ~/.config/awesome/json.lua

#=> awesome-capslock_widget
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

