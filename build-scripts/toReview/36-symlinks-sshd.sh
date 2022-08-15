#!/bin/bash

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

#=> test
echo '$ARCHBUILDS' "= $ARCHBUILDS"
read -p "- looks good?"

# #=> Dropbox vimfiles
# sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim
# sudo rm -r ~/.vim; ln -s /mnt/SD480GSSDPlus/Play0/vimfiles ~/.vim  # for testing

# #=> email config
# cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
# cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $lclm/notmuch-config-backup ~/.notmuch-config

#=> LaTeX
rm -r ~/texmf/tex/latex/jo; ln -s $CP/LaTeX/jo ~/texmf/tex/latex/jo

# #=> sbMb dual monitors 0
# sudo cp $MACHINE/etc/20-monitor.conf /etc/X11/xorg.conf.d/20-monitor.conf

# #=> sbMb dual monitors 1
# sudo rm /etc/X11/xorg.conf.d/20-monitor.conf

# #=> sshd 1 sshd.service 0 test
# sshd -t  # before restarting service

# #=> sshd 1 sshd.service 1 enable
# sudo systemctl enable sshd.service --now
# sudo systemctl status sshd.service

# #=> sshd 1 sshd.service 2 restart
# sudo systemctl restart sshd.service

# #=> sshd 1 sshd.service 3 disable
# sudo systemctl disable sshd.service --now

# #=> remove urxvt extensions
# rm -r ~/.urxvt/ext

#=> urxvt extensions
rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls ~/.urxvt/ext

