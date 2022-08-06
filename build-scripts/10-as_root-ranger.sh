#!/bin/bash

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../$(uname -n)/export-machine
. ../Bash/export-storage
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 2 configurations
ln -sf $ARCHBUILDS/jo/ranger ~/.config/ranger
exa -la ~/.config

# #=> 2 fix :trash
# rg '.path for f in files' /usr/lib/python3.10/site-packages/ranger/core/actions.py
# sed -i 's/.path for f in files]/ if isinstance(f, str) else f.path for f in files]/' /usr/lib/python3.10/site-packages/ranger/core/actions.py

