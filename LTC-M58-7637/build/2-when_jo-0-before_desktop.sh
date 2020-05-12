#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Updates
. $ARCHBUILDS/build/2-when_jo/0-updates.sh

# #=> 1 to X
# sudo -E bash build.sh  # passing through the environment
true

# #==> generate 00-keyboard.conf
# localectl --no-convert set-x11-keymap fr logitech_base
# localectl status
# true

# #==> Intel video driver & OpenGL
# pacman -S xf86-video-intel mesa

# #==> to X
. $ARCHBUILDS/build/2-when_jo/0-before_desktop.sh

