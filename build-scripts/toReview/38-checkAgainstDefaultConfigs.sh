#!/bin/bash
# vim: fdl=1:

# bash 38-checkAgainstDefaultConfigs.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> obmenu-generator
nvim -O /etc/xdg/obmenu-generator/schema.pl $Openbox/openbox/schema.pl

#=> xinitrc
nvim -O /etc/X11/xinit/xinitrc $ARCHBUILDS/jo/xinitrc

#=> openbox/rc.xml
nvim -O /etc/xdg/openbox/rc.xml $Openbox/openbox/rc/rc.xml

