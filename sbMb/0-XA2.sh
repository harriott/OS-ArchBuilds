#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 XA2
# # plugged into back top upper USB
# #  ip link   reports it as   enp0s18f2u1
# dhcpcd enp0s18f2u1
# ping -c 3 8.8.8.8

