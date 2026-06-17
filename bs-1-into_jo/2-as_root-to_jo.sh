#!/bin/bash

# sudo bash $OSAB/bs-1-into_jo/1-as_root-to_jo.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e

set -v  # prints each statement here, including comments

#=> 0 rsync onGH
rsync -irtv --delete /root/onGH/ /home/jo/onGH
chown -R jo:jo /home/jo/onGH

#=> 4 end
# you're ready to reboot and login to jo

