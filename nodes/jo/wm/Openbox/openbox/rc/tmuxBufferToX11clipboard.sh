#!/bin/bash

# get the last tmux buffer over into X11 clipboard (= usable by CopyQ)
# --------------------------------------------------------------------

# chmod 755 $Obc/rc/tmuxBufferToX11clipboard.sh
# ln -sf $Obc/rc/tmuxBufferToX11clipboard.sh ~/.config/openbox/tmuxBufferToX11clipboard.sh

# Called by  $Obc/rc.xml  because:
#  <command>command | command</command>  doesn't get parsed

# <!-- Keybinding to get the last tmux buffer over into X11 clipboard - JH -->
# <keybind key="W-t">
#   <action name="Execute">
#     <command>/home/jo/.config/openbox/tmuxBufferToX11clipboard.sh</command>
#   </action>
# </keybind>

tmux show-buffer | xclip -selection clipboard -i

