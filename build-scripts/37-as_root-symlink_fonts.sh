#!/bin/bash
# vim: fdl=1:

# bash 38-as_root-symlink_fonts.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> for fonts
cfA=/usr/share/fonts/copiedForArch
[[ $cfA ]] && rm -r $cfA; ln -s $IThandy/fonts-forArch $cfA
exa -la /usr/share/fonts

