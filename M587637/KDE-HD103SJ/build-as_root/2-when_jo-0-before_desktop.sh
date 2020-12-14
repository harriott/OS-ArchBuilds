#!/bin/bash
# vim: fdc=1 fdl=1 fdm=expr ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 to X
# sudo -E bash build.sh  # passing through the environment
true

# #==> generate 00-keyboard.conf
# localectl --no-convert set-x11-keymap fr logitech_base
# localectl status
# true

# #==> Intel video driver & OpenGL
# pacman -S xf86-video-intel mesa

# #==> to X
. $ARCHBUILDS/build-root-subScripts/2-when_jo-0-before_desktop.sh

