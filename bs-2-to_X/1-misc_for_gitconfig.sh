#!/bin/bash
# vim: set fdl=2 sw=2:

#=> get misc
# for  $machBld/jo/gitconfig  to include  $misc/CrossPlatform/gitconfig
cd ~

#==> 0 HTTPS
git clone git@github.com:harriott/misc.git

#==> 1 origin -> sh
# sed -i 's/origin/gh/g' misc/.git/config

