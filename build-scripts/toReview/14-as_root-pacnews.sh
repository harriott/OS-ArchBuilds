#!/bin/bash
# vim: se fdl=2:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quit on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 check
sudo find /etc -type f -name "*pacnew"

#=> 1 cheat/conf.yml.pacnew
nvim -O /etc/cheat/conf.yml /etc/cheat/conf.yml.pacnew -c 'windo difft'
rm /etc/cheat/conf.yml.pacnew

# #=> 1 clamd.conf
# nvim -o /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
# rm /etc/clamav/clamd.conf.pacnew

#=> 1 locale.gen
nvim -O /etc/locale.gen /etc/locale.gen.pacnew -c 'windo difft'
rm /etc/locale.gen.pacnew

# #=> 1 sshd_config
# nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
# rm /etc/ssh/sshd_config.pacnew

