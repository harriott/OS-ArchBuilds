#! /bin/sh

# chmod +x $ABjo/wm/cmus_notify.sh
#  can't be called directly
#  symlinked in  $OSAB/nodes-set/jo-0.sh  to  ~/.local/share/cmus_notify.sh
#  used by  $ABjo/wm/cmus-rc.conf

# cmus_notify -h
# pip show cmus_notify

# cmus_notify "$*" &  # needs Dunst for formatting
cmus_notify -t 'cmus: {status}' -b "$(printf "{artist} - {album} - {title} - {duration}")" "$*" &

