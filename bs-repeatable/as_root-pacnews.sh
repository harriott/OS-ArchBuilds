#!/bin/bash

# su > pw  for  bash $OSAB/bs-repeatable/as_root-pacnews.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e  # quit on error

#=> 0 check
sudo find /etc -type f -name "*pacnew"

#=> 1 cheat
nvim -O /etc/cheat/conf.yml /etc/cheat/conf.yml.pacnew -c 'windo difft'
rm /etc/cheat/conf.yml.pacnew

#=> 1 clamd
nvim -O /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
rm /etc/clamav/clamd.conf.pacnew

#=> 1 davfs2
nvim -O /etc/davfs2/davfs2.conf /etc/davfs2/davfs2.conf.pacnew -c 'windo difft'
rm /etc/davfs2/davfs2.conf.pacnew

#=> 1 dhcpcd
nvim -O /etc/dhcpcd.conf /etc/dhcpcd.conf.pacnew -c 'windo difft'
rm /etc/dhcpcd.conf.pacnew

#=> 1 firewalld
# nvim -O /etc/firewalld/firewalld.conf /etc/firewalld/firewalld.conf.pacnew -c 'windo difft'
# rm /etc/firewalld/firewalld.conf.pacnew
bu="$machLg/etc/firewalld.conf"
cp /etc/firewalld/firewalld.conf $bu
chown jo:jo $bu

#=> 1 fortran
nvim -O /etc/makepkg.conf.d/fortran.conf /etc/makepkg.conf.d/fortran.conf.pacnew -c 'windo difft'
rm /etc/makepkg.conf.d/fortran.conf.pacnew

#=> 1 grub
nvim -O /etc/default/grub /etc/default/grub.pacnew -c 'windo difft'
rm /etc/default/grub.pacnew

#=> 1 hosts
nvim -O /etc/hosts /etc/hosts.pacnew -c 'windo difft'
rm /etc/hosts.pacnew

#=> 1 http
# see  $OSAB/nodes-etc_httpd_conf/httpd.conf

#=> 1 journald
nvim -O /etc/systemd/journald.conf /etc/systemd/journald.conf.pacnew -c 'windo difft'
rm /etc/systemd/journald.conf.pacnew

#=> 1 locale
nvim -O /etc/locale.gen /etc/locale.gen.pacnew -c 'windo difft'
rm /etc/locale.gen.pacnew

#=> 1 logind
nvim -O /etc/systemd/logind.conf /etc/systemd/logind.conf.pacnew -c 'windo difft'
rm /etc/systemd/logind.conf.pacnew

#=> 1 nginx
nvim -O /etc/nginx/nginx.conf.pacnew $OSAB/extra-etc/Nginx/pristine.conf -c 'windo difft'
rm /etc/nginx/nginx.conf.pacnew

#=> 1 pacman
nvim -O /etc/pacman.conf /etc/pacman.conf.pacnew -c 'windo difft'
rm /etc/pacman.conf.pacnew

#=> 1 papersize
nvim -O /etc/papersize /etc/papersize.pacnew -c 'windo difft'
rm /etc/papersize.pacnew

#=> 1 passwd
nvim -O /etc/passwd /etc/passwd.pacnew -c 'windo difft'
rm /etc/passwd.pacnew

#=> 1 php
nvim -O /etc/php/php.ini /etc/php/php.ini.pacnew -c 'windo difft'
rm /etc/php/php.ini.pacnew

#=> 1 rsnapshot
nvim -O /etc/rsnapshot.conf /etc/rsnapshot.conf.pacnew -c 'windo difft'
rm /etc/rsnapshot.conf.pacnew

#=> 1 rust
nvim -O /etc/makepkg.conf.d/rust.conf /etc/makepkg.conf.d/rust.conf.pacnew -c 'windo difft'
rm /etc/makepkg.conf.d/rust.conf.pacnew

#=> 1 shells
nvim -O /etc/shells /etc/shells.pacnew -c 'windo difft'
rm /etc/shells.pacnew

#=> 1 sshd_config
nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
rm /etc/ssh/sshd_config.pacnew

#=> 1 sudoers
nvim -O /etc/sudoers /etc/sudoers.pacnew -c 'windo difft'  # diff over changes then  :wq!
visudo -c -f /etc/sudoers
rm /etc/sudoers.pacnew

#=> 1 texmf
nvim -O /etc/texmf/web2c/texmf.cnf /etc/texmf/web2c/texmf.cnf.pacnew -c 'windo difft'
rm /etc/texmf/web2c/texmf.cnf.pacnew

