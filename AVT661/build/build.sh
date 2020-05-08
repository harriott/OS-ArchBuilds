#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

# as root  bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> * Updates
pacman -Syu
# reboot if kernel updated !
true

# #=> 0 initial install

# #==> systemd-networkd
# sudo systemctl enable systemd-networkd.service --now
# sudo systemctl status systemd-networkd.service
# true

# #=> 1 fstab

# #=> 1 to X

# #==> mlocate path tweak
# # allowing /mnt/SDSSDA240G/
# # 0
# sudo sed -i 's#/mnt#/mnt/9QG2FFEE /mnt/HD103SJ /mnt/WD1001FALS#' /etc/updatedb.conf
# # 1
# sudo sed -i 's#/mnt/9QG2FFEE ##' /etc/updatedb.conf
# sudo sed -i 's#/mnt/HD103SJ ##' /etc/updatedb.conf

# #==> softwares - system
# # lshw
# pacman -S lshw

# #=> 2 when X

