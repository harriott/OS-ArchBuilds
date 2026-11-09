#!/bin/bash
# vim: fdl=1 sw=2:

# from root,  bash $OSAB/bs-1-into_jo/5-as_root-broot-sudoers.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> for broot
broot -- install  # then  br  called from  $ABno/Bash/bashrc-generic

#=> sudoers 0 set
read -p "Going to  diff  with  Vim, when done  :wq!"
vim -O /etc/sudoers $ABno/etc/sudoers -c 'windo difft'

#=> sudoers 1 check
echo; echo "Check with visudo:"
visudo -c -f /etc/sudoers  # essential!

echo; echo "Check timeout:"
grep timestamp_timeout /etc/sudoers

echo; echo "$(wc -l /etc/sudoers) lines, ending so:"
echo; tail -n 4 /etc/sudoers

