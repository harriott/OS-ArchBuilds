#!/bin/bash

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

#=> test
echo '$ARCHBUILDS' "= $ARCHBUILDS"
read -p "- looks good?"

#=> ansiweather, cmus, Dunst, Zathura

ln -sf $ARCHBUILDS/jo/ansiweather ~/.ansiweatherrc

ln -sf $ARCHBUILDS/jo/Openbox/cmusqueue.sh ~/Arch/cmusqueue.sh
ln -sf $Openbox/cmus_notify.sh             ~/.local/share/cmus_notify.sh
ln -sf $Openbox/cmus-rc.conf               ~/.config/cmus/rc

ln -sf $Openbox/dunstrc   ~/.config/dunst/dunstrc # requires restarting X
ln -sf $Openbox/zathurarc ~/.config/zathura/zathurarc

# #=> Dropbox vimfiles
# sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim
# sudo rm -r ~/.vim; ln -s /mnt/SD480GSSDPlus/Play0/vimfiles ~/.vim  # for testing

# #=> email config
# cp -f $GNULE/mbsyncrc-backup ~/.mbsyncrc
# cp -f $GNULE/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $GNULE/notmuch-config-backup ~/.notmuch-config

#=> LaTeX
rm -r ~/texmf/tex/latex/jo; ln -s $CP/LaTeX/jo ~/texmf/tex/latex/jo

#=> Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

#=> Pandoc templates
rm -r ~/.pandoc/templates; ln -s $onGH/pandoc-templates ~/.pandoc/templates

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

