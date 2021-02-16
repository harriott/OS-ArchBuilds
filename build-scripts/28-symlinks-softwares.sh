#!/bin/bash
# vim: fdc=1 fdm=expr:

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

#=> email config
ln -sf $GNULE/notmuch-config ~/.notmuch-config

#=> LaTeX
ln -s $CrossPlatform/forLaTeX ~/texmf/tex/latex/jo

#=> sbMb dual monitors 0
sudo cp $MACHINE/etc/20-monitor.conf /etc/X11/xorg.conf.d/20-monitor.conf

#=> sbMb dual monitors 1
sudo rm /etc/X11/xorg.conf.d/20-monitor.conf

#=> Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

#=> Pandoc templates
ln -s $onGH/pandoc-templates ~/.pandoc/templates

#=> SSH config
ln -sf $CrossPlatform/SSHconfig/M587637 ~/.ssh/config
ln -sf $CrossPlatform/SSHconfig/sbMb ~/.ssh/config

#=> sshd 0 sshd_config
sudo cp $CrossPlatform/sshd_config/M587637 /etc/ssh/sshd_config
sudo cp $CrossPlatform/sshd_config/sbMb /etc/ssh/sshd_config

#=> sshd 1 sshd.service 0 test
sshd -t  # before restarting service

#=> sshd 1 sshd.service 1 enable
sudo systemctl enable sshd.service --now
sudo systemctl status sshd.service

#=> sshd 1 sshd.service 2 restart
sudo systemctl restart sshd.service

#=> sshd 1 sshd.service 3 disable
sudo systemctl disable sshd.service --now

#=> softares in my Openbox build

ln -sf $Openbox/cmus-rc.conf   ~/.config/cmus/rc
ln -sf $Openbox/dunstrc        ~/.config/dunst/dunstrc  # requires restarting X
ln -sf $Openbox/zathurarc      ~/.config/zathura/zathurarc
ln -sf $Openbox/cmus_notify.sh ~/.local/share/cmus_notify.sh
ln -sf $tmux/tmux.conf         ~/.tmux.conf

rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls ~/.urxvt/ext

