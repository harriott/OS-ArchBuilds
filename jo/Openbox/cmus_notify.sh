#! /bin/sh

# chmod +x $Openbox/cmus_notify.sh
# symlinked to  ~/.local/share/cmus_notify.sh  in  $ARCHBUILDS/build-scripts/35-symlinks-softwares.sh
# used by  $Openbox/cmus-rc.conf

cmus_notify "$*" &

