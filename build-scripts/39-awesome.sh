#!/bin/bash

sudo pacman -S awesome
mkdir -p ~/.config/awesome/
ln -sf $MACHINE/jo/awesome/autorun.sh ~/.config/awesome/autorun.sh
ln -sf $MACHINE/jo/awesome/rc.lua ~/.config/awesome/rc.lua

