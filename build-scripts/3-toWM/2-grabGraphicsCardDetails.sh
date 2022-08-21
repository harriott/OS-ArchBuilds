#!/bin/bash
# vim: sw=2:

set -ev
trap read debug  # puts a read request after each executable line

#=> lshw
ld=/home/jo/lshw-display.txt; sudo lshw -C display > $ld; chown jo:jo $ld

#=> lspci
lspci -vnn | grep VGA -A 12 > /home/jo/lspci-display.txt

