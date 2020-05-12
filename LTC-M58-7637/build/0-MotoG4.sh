#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Moto G4
# # plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# dhcpcd enp0s29f7u6
# ping -c 3 8.8.8.8

