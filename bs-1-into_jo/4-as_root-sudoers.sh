#!/bin/bash

# from root,  bash $OSAB/bs-1-into_jo/4-as_root-sudoers.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

read -p "Going to  diff  with  Vim, when done  :wq!"
vim -O /etc/sudoers $OSAB/nodes-etc/sudoers -c 'windo difft'

echo; echo "Check with visudo:"
visudo -c -f /etc/sudoers  # essential!

echo; echo "Check timeout:"
grep timestamp_timeout /etc/sudoers

echo; echo "$(wc -l /etc/sudoers) lines, ending so:"
echo; tail -n 4 /etc/sudoers

