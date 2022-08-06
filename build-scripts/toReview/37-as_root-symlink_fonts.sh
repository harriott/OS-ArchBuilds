#!/bin/bash
# vim: fdl=1:

# bash 37-as_root-symlink_fonts.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> for fonts
cfA=/usr/share/fonts/copiedForArch
. /home/jo/.export-machine
. /home/jo/.export-storage
. /home/jo/.export-jo
[[ $cfA ]] && rm -r $cfA; ln -s $cITh/fonts-forArch $cfA
exa -la /usr/share/fonts

