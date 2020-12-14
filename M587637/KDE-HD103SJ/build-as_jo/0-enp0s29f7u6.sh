#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 enp0s29f7u6
# # Moto G4 plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# sudo dhcpcd enp0s29f7u6  # (assuming jo has sudoer right to dhcpcd)
# ping -c 3 8.8.8.8

