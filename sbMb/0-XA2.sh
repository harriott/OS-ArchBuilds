#!/bin/bash
# vim: fdc=1 fdl=1 fdm=expr ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 XA2
# plugged into back top upper USB
ip link
dhcpcd enp0s22f2u3
ping -c 3 8.8.8.8

