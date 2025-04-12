#! /bin/sh

# chmod +x $ABjo/wm/cmus_notify.sh
#  can't be called directly
#  cmus_notify -h  # checks
#  symlinked in  $OSAB/nodes-set/jo-0.sh  to  ~/.local/share/cmus_notify.sh
#  used by  $ABjo/wm/cmus-rc.conf

cmus_notify "$*" &

