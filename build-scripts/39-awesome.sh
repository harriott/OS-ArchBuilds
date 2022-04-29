#!/bin/bash

sudo pacman -S awesome
mkdir -p ~/.config/awesome/
ln -sf $MACHINE/jo/awesomerc.lua ~/.config/awesome/rc.lua

