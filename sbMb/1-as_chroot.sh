#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 install continued as chroot
# as root:  bash build.sh

#==> 0 environment variables
ARCHBUILDS=/mnt/mnt/ArchBuilds
  MACHINE=$ARCHBUILDS/sbMb; echo $MACHINE

# #==> 1 networking
# # cat /etc/hostname   shows it ain't there
# echo ltcm58 > /etc/hostname
# # /etc/hosts
# echo "127.0.0.1 localhost" >> /etc/hosts
# echo "::1       localhost" >> /etc/hosts
# echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts

# #===> NetworkManager
# systemctl enable NetworkManager.service --now
# systemctl status NetworkManager.service
# true

# #==> 2 build as chroot
. $ARCHBUILDS/build/1-as_chroot.sh

