#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quit on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 check
sudo find /etc -type f -name "*pacnew"

#=> 1 cheat/conf.yml.pacnew
nvim -O /etc/cheat/conf.yml /etc/cheat/conf.yml.pacnew -c 'windo difft'
rm /etc/cheat/conf.yml.pacnew

#=> 1 clamd.conf
nvim -O /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
rm /etc/clamav/clamd.conf.pacnew

#=> 1 dhcpcd.conf
nvim -O /etc/dhcpcd.conf /etc/dhcpcd.conf.pacnew -c 'windo difft'
rm /etc/dhcpcd.conf.pacnew

#=> 1 etc/papersize
nvim -O /etc/papersize /etc/papersize.pacnew -c 'windo difft'
rm /etc/papersize.pacnew

#=> 1 firewalld.conf
nvim -O /etc/firewalld/firewalld.conf /etc/firewalld/firewalld.conf.pacnew -c 'windo difft'
rm /etc/firewalld/firewalld.conf.pacnew

#=> 1 grub
nvim -O /etc/default/grub /etc/default/grub.pacnew -c 'windo difft'
rm /etc/default/grub.pacnew

#=> 1 locale.gen
nvim -O /etc/locale.gen /etc/locale.gen.pacnew -c 'windo difft'
rm /etc/locale.gen.pacnew

#=> 1 logind.conf
nvim -O /etc/systemd/logind.conf /etc/systemd/logind.conf.pacnew -c 'windo difft'
rm /etc/systemd/logind.conf.pacnew

#=> 1 pacman.conf
nvim -O /etc/pacman.conf /etc/pacman.conf.pacnew -c 'windo difft'
rm /etc/pacman.conf.pacnew

#=> 1 rsnapshot.conf
nvim -O /etc/rsnapshot.conf /etc/rsnapshot.conf.pacnew -c 'windo difft'
rm /etc/rsnapshot.conf.pacnew

#=> 1 shells
nvim -O /etc/shells /etc/shells.pacnew -c 'windo difft'
rm /etc/shells.pacnew

#=> 1 sshd_config
nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
rm /etc/ssh/sshd_config.pacnew

#=> 1 texmf.cnf
nvim -O /etc/texmf/web2c/texmf.cnf /etc/texmf/web2c/texmf.cnf.pacnew -c 'windo difft'
rm /etc/texmf/web2c/texmf.cnf.pacnew

