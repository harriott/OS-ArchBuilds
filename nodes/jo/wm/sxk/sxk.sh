#!/bin/bash

# Joseph Harriott - lun 06 juil 2026

# toggle  XKEYBOARD-CONFIG  LAYOUT (= language)
# ---------------------------------------------

# managed in my  $OSAB/nodes-set/jo-3-when_myDrA.sh
#  to provide my command  sxk

if [[ $(setxkbmap -query) =~ 'fr' ]]; then
    setxkbmap gb
else
    setxkbmap fr
    xmodmap ~/.xmodmap
fi

