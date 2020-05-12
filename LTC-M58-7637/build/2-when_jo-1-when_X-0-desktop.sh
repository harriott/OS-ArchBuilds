#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> ownership of HD103SJ
# chown -Rc jo:jo /mnt/HD103SJ
# rm -r /mnt/HD103SJ/lost+found
# true

# #=> desktop
# sudo -E bash build.sh  # passing through the environment
true

# #==> 0 KDE
. $ARCHBUILDS/build/2-when_jo/1-when_X/0-kde.sh

# #=> shared HD103SJ
# groupadd jodj
# chgrp jodj /mnt/HD103SJ
# chmod 770 /mnt/HD103SJ
# chmod +s /mnt/HD103SJ
# usermod -a -G jodj jo
# usermod -a -G jodj dj
# # reboot so dj can detect this permission

# #=> user dj
# # creating the home directory and adding to group wheel
# useradd -m -G wheel dj  #  wheel allows sudo
# until passwd dj; do echo 'try again'; done
# mkdir ~/dup
# chmod o=rx ~/dup  #  full permissions for other users

# #==> automatic login to virtual console
# cp "$MACHINE/override-dj.conf" /etc/systemd/system/getty@tty1.service.d/override.conf
# cat /etc/systemd/system/getty@tty1.service.d/override.conf
# # reboot when ready
# true

