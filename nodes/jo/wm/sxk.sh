#!/bin/bash

# Joseph Harriott - lun 06 juil 2026

# toggle  XKEYBOARD-CONFIG  LAYOUT (= language)
# ---------------------------------------------

# managed in my  $OSAB/nodes-set/jo-3-when_myDrA.sh
#  to provide my command  sxk  for  Xfce > Clavier > Raccourcis d'applications

# useful to have also  Préférences du tableau de bord > Éléments > Dispositions de clavier  to see the associated country flag

if [[ $(setxkbmap -query) =~ 'fr' ]]; then
    setxkbmap gb
else
    setxkbmap fr
    xmodmap ~/.xmodmap
fi

