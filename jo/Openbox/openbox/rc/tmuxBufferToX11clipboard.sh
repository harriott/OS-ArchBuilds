#!/bin/bash

# get the last tmux buffer over into X11 clipboard (= usable by CopyQ)
# --------------------------------------------------------------------

# chmod 755 $Openbox/openbox/rc/tmuxBufferToX11clipboard.sh

# Called by  $Openbox/openbox/rc.xml  because:
#  <command>command | command</command>  doesn't get parsed

tmux show-buffer | xclip -selection clipboard -i

