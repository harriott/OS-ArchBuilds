#!/bin/bash
# vim: fdl=1:

# mer 01 juil 2026

# sl > pw  for  bash $OSAB/bs-5-when_myDrA/as_root-cmus-notify-icons.sh
#  for  $culLA/jo/cmushnotify.sh > notify-send

# #=> cmus-notify icons - IcoMoon-Free-64px 0 $ITcore
# magick $GRs/d-CP/d-icons/r-Keyamoon-IcoMoon-Free/PNG/32px/279-pause.png -fill orange -colorize 100% $ITcore/ulLinux/Arch/usr-share-IcoMoon-Free/32x-279-pause-orange.ico
# magick $GRs/d-CP/d-icons/r-Keyamoon-IcoMoon-Free/PNG/16px/280-stop.png -fill red -colorize 100% $ITcore/ulLinux/Arch/usr-share-IcoMoon-Free/16x-280-stop-red.ico

#=> cmus-notify icons - IcoMoon-Free-64px 1 /usr/share
ID="/usr/share/IcoMoon-Free"
[ -d $ID ] && sudo rm -r $ID
sudo ln -sf $ITcore/ulLinux/Arch/usr-share-IcoMoon-Free $ID
eza -adl /usr/share/IcoMoon-Free

