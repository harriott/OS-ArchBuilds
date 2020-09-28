#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>

#=> for fonts

cfA=/usr/share/fonts/copiedForArch
Technos=/mnt/SDSSDA240G/Dropbox/JH/Technos
[[ $cfA ]] && rm -r $cfA; ln -s $Technos/IT0-fonts-copiedForArch $cfA

