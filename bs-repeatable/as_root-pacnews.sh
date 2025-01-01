#!/bin/bash

# su > pw  for  bash $OSAB/bs-repeatable/as_root-pacnews.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e  # quit on error

#=> 0 check
sudo find /etc -type f -name "*pacnew"

# #=> 1 cheat/conf.yml.pacnew
# nvim -O /etc/cheat/conf.yml /etc/cheat/conf.yml.pacnew -c 'windo difft'
# rm /etc/cheat/conf.yml.pacnew

# #=> 1 clamd.conf
# nvim -O /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
# rm /etc/clamav/clamd.conf.pacnew

# #=> 1 dhcpcd.conf
# nvim -O /etc/dhcpcd.conf /etc/dhcpcd.conf.pacnew -c 'windo difft'
# rm /etc/dhcpcd.conf.pacnew

# #=> 1 etc/papersize
# nvim -O /etc/papersize /etc/papersize.pacnew -c 'windo difft'
# rm /etc/papersize.pacnew

# #=> 1 etc/php/php.ini
# nvim -O /etc/php/php.ini /etc/php/php.ini.pacnew -c 'windo difft'
# rm /etc/php/php.ini.pacnew

# #=> 1 firewalld.conf
# # nvim -O /etc/firewalld/firewalld.conf /etc/firewalld/firewalld.conf.pacnew -c 'windo difft'
# # rm /etc/firewalld/firewalld.conf.pacnew
# bu="$ulLA/ml-$host/etc/firewalld.conf"
# cp /etc/firewalld/firewalld.conf $bu
# chown jo:jo $bu

# #=> 1 grub
# nvim -O /etc/default/grub /etc/default/grub.pacnew -c 'windo difft'
# rm /etc/default/grub.pacnew

# #=> 1 journald.conf
# nvim -O /etc/systemd/journald.conf /etc/systemd/journald.conf.pacnew -c 'windo difft'
# rm /etc/systemd/journald.conf.pacnew

# #=> 1 locale.gen
# nvim -O /etc/locale.gen /etc/locale.gen.pacnew -c 'windo difft'
# rm /etc/locale.gen.pacnew

# #=> 1 logind.conf
# nvim -O /etc/systemd/logind.conf /etc/systemd/logind.conf.pacnew -c 'windo difft'
# rm /etc/systemd/logind.conf.pacnew

# #=> 1 makepkg.conf
# nvim -O /etc/makepkg.conf.d/rust.conf /etc/makepkg.conf.d/rust.conf.pacnew -c 'windo difft'
# rm /etc/makepkg.conf.d/rust.conf.pacnew

#=> 1 nginx.conf
nvim -O /etc/nginx/nginx.conf.pacnew $OSAB/etc/Nginx/pristine.conf -c 'windo difft'
rm /etc/nginx/nginx.conf.pacnew

# #=> 1 pacman.conf
# nvim -O /etc/pacman.conf /etc/pacman.conf.pacnew -c 'windo difft'
# rm /etc/pacman.conf.pacnew

# #=> 1 passwd.conf
# nvim -O /etc/passwd /etc/passwd.pacnew -c 'windo difft'
# rm /etc/passwd.pacnew

# #=> 1 rsnapshot.conf
# nvim -O /etc/rsnapshot.conf /etc/rsnapshot.conf.pacnew -c 'windo difft'
# rm /etc/rsnapshot.conf.pacnew

# #=> 1 shells
# nvim -O /etc/shells /etc/shells.pacnew -c 'windo difft'
# rm /etc/shells.pacnew

# #=> 1 sshd_config
# nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
# rm /etc/ssh/sshd_config.pacnew

#=> 1 sudoers
nvim -O /etc/sudoers /etc/sudoers.pacnew -c 'windo difft'  # diff over changes then  :wq!
visudo -c -f /etc/sudoers
rm /etc/sudoers.pacnew

# #=> 1 texmf.cnf
# nvim -O /etc/texmf/web2c/texmf.cnf /etc/texmf/web2c/texmf.cnf.pacnew -c 'windo difft'
# rm /etc/texmf/web2c/texmf.cnf.pacnew

