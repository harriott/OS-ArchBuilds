#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 install to chroot
as root  bash <this_script>

#==> 0 environment variables
ARCHBUILDS=/bs/ArchBuilds

#==> 1 prepare
loadkeys fr

# disks already partitioned with  gdisk
gdisk -l /dev/sda

#==> 2 format needed partitions

#==> 3 mount needed partitions

#==> 4 format extra partition

#==> 5 install essential stuff then chroot
this script will be killed after this
. $ARCHBUILDS/build/0-to_chroot.sh

