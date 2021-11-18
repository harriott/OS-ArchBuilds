#!/bin/bash
# vim: fdl=1:

# bash 38-as_root-symlink_fonts.sh

#=> for fonts
cfA=/usr/share/fonts/copiedForArch
[[ $cfA ]] && rm -r $cfA; ln -s $IThandy/fonts-forArch $cfA
exa -la /usr/share/fonts

