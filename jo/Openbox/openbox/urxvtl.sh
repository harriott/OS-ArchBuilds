#!/bin/bash

# to be called from  $Openbox/openbox/autostart

urxvt -geometry $urxvtGeometry &
#  ($urxvtGeometry  is defined pre-X in  $MACHINE/jo/export-machine)

# (chmod u+x $Openbox/openbox/urxvtl.sh)
