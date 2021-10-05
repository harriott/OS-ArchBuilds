#!/bin/bash
# vim: set fdl=2 sw=2:

#=> get misc
cd ~

#==> 0 HTTPS
git clone https://github.com/harriott/misc.git

#==> 1 convert to SSH
sed -i 's/origin/gh/g; s#https://github.com/#git@github.com:#g' misc/.git/config

