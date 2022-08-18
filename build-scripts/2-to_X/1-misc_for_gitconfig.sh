#!/bin/bash
# vim: set fdl=2 sw=2:

#=> get misc
# for  $MACHINE/jo/gitconfig  to include  $onGH/misc/CrossPlatform/gitconfig
cd ~

#==> 0 HTTPS
git clone git@github.com:harriott/misc.git

#==> 1 origin -> sh
# sed -i 's/origin/gh/g' misc/.git/config

