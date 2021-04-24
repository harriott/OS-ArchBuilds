#!/bin/bash
# vim: fdl=1:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ip link  # to find the name

# dhcpcd enp0s22f2u1  # sbMb XA2 back top upper
dhcpcd enp0s22f2u3  # sbMb Moto G4 back top upper
# dhcpcd enp0s22f2u3  # sbMb XA2 back top upper

ping -c 3 8.8.8.8

