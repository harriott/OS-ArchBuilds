#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-into_root/2-prepare_for_root-2.sh
#  set $host then bash this (source  would risk exit dropping me out of  chroot)

#=> 0 get environment
set -e  # quits on error
rA=/root/Arch; [ -d $rA ] || mkdir $rA
archiso=1
source nodes/Bash/export-Arch  # defines  $OSAB
source $OSAB/nodes-set/root-0.sh

#=> 1 systemd-boot
set -v  # prints each statement here, including comments
# bootctl install
cp $ABnm/etc/fstab /etc/fstab
cp $OSAB/nodes/efi_loader/entries_arch_conf/$host.conf /boot/loader/entries/arch.conf
cp $OSAB/nodes/efi_loader/loader.conf /boot/loader/loader.conf

