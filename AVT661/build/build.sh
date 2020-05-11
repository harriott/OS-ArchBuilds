#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

# as root  bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 initial install

# #==> systemd-networkd
# sudo systemctl enable systemd-networkd.service --now
# sudo systemctl status systemd-networkd.service
# true

# #=> 1 Updates
# pacman -Syu
# # pacman -Syyuu
# # reboot if kernel updated !
# true

# #=> 1 fstab

# #=> 1 when jo
# sudo -E bash build.sh  # passing through the environment
true

# #==> 0 environment variables
# # these are set in  ~/.xinitrc

# #==> 1 fstab

# #==> 1 to X

# #===> mlocate path tweak
# # allowing /mnt/SDSSDA240G/
# # 0
# sudo sed -i 's#/mnt#/mnt/9QG2FFEE /mnt/HD103SJ /mnt/WD1001FALS#' /etc/updatedb.conf
# # 1
# sudo sed -i 's#/mnt/9QG2FFEE ##' /etc/updatedb.conf
# sudo sed -i 's#/mnt/HD103SJ ##' /etc/updatedb.conf

# #===> root bash configurations
# cp $ARCHBUILDS/root/bashrc /root/.bashrc  # the only one that's best kept as a hard copy
# ln -sf $ARCHBUILDS/Bash/bashrc-generic /root/.bashrc-generic
# ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc
# ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile

# #===> softwares - file manage
# # rsnapshot
# pacman -S rsnapshot
# for systemdUnit in $ARCHBUILDS/etc/systemd/rsnapshot*; do
    # cp $systemdUnit /etc/systemd/system/${systemdUnit##/*/}
# done
# systemctl enable --now rsnapshot-hourly.timer
# systemctl enable --now rsnapshot-daily.timer
# systemctl enable --now rsnapshot-weekly.timer
# systemctl enable --now rsnapshot-monthly.timer
# systemctl status rsnapshot-hourly.timer

# #===> softwares - networking
# pacman -S thunderbird-i18n-en-gb

# #===> softwares - system
# # lshw
# pacman -S lshw

# my system backup script
# ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

# #=> 2 when X

