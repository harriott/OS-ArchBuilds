#!/bin/bash
# vim: fdl=1:

# Tue 06 Jan 2026

# bash $OSAB/bs-4-whenWM/4-sudo-cmus-notify-icons.sh

# #=> cmus-notify icons - IcoMoon-Free-64px 0 $coreIT
# magick $GRs/d-CP/d-icons/r-Keyamoon-IcoMoon-Free/PNG/32px/279-pause.png -fill orange -colorize 100% $coreIT/ulLinux/Arch/usr-share-IcoMoon-Free/32x-279-pause-orange.ico
# magick $GRs/d-CP/d-icons/r-Keyamoon-IcoMoon-Free/PNG/16px/280-stop.png -fill red -colorize 100% $coreIT/ulLinux/Arch/usr-share-IcoMoon-Free/16x-280-stop-red.ico

#=> cmus-notify icons - IcoMoon-Free-64px 1 /usr/share
ID="/usr/share/IcoMoon-Free"
[ -d $ID ] && sudo rm -r $ID
sudo ln -sf $coreIT/ulLinux/Arch/usr-share-IcoMoon-Free $ID
eza -adl $ID

