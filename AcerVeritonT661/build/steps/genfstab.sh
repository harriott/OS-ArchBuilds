#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# fstab
# cat /mnt/etc/fstab  reveals it to have just the headers
genfstab -U -p /mnt >> /mnt/etc/fstab
# - generates info for  /  /home  & the  swap  partition
