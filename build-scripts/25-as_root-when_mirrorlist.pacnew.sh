#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

rm /etc/pacman.d/mirrorlist.pacnew
. 02-when_chroot-reflector.sh

