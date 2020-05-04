#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh  to fix my Openbox install

#=> for jo, having sourced  ~/.xinitrc

ln -sf $Openbox/Xresources/Xresources                  ~/.Xresources
ln -sf $Openbox/cmus-rc.conf                           ~/.config/cmus/rc
ln -sf $Openbox/dunstrc                                ~/.config/dunst/dunstrc
ln -sf $MACHINE/jo/openbox/schema.pl                   ~/.config/obmenu-generator/schema.pl
ln -sf $MACHINE/jo/openbox/autostart                   ~/.config/openbox/autostart
ln -sf $Openbox/openbox/menu.xml                       ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc.xml                         ~/.config/openbox/rc.xml
ln -sf $Openbox/zathurarc                              ~/.config/zathura/zathurarc
ln -sf $ARCHBUILDS/jo/gpg-agent.conf                   ~/.gnupg/gpg-agent.conf
ln -sf $Openbox/cmus_notify.sh                         ~/.local/share/cmus_notify.sh
ln -sf $GNULE/notmuch-config                           ~/.notmuch-config
ln -sf $ITstack/onGitHub/md4pdf/defaults.yaml          ~/.pandoc/defaults/md4pdf.yaml
ln -sf $ITstack/onGitHub/md4pdf/GNULinux/defaults.yaml ~/.pandoc/defaults/md4pdfGNULinux.yaml
ln -sf $ITstack/onGitHub/md4pdf/defaults-toc.yaml      ~/.pandoc/defaults/md4pdfToC.yaml
ln -sf $MACHINE/jo/SSHconfig                           ~/.ssh/config
ln -sf $tmux/tmux.conf                                 ~/.tmux.conf
ln -sf $MACHINE/build/AURclones.sh                     ~/Arch/AUR/AURclones.sh

rm -r ~/.pandoc/templates; ln -s $ITstack/onGitHub/pandoc-templates ~/.pandoc/templates
rm -r ~/.password-store; ln -s $GNULE/$machineName-password-store   ~/.password-store
rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls                      ~/.urxvt/ext
rm -r ~/texmf/tex/latex/jo; ln -s $ITstack/forLaTeX                 ~/texmf/tex/latex/jo

source $ARCHBUILDS/symlinks.sh  # symlinks that are used on all machines

# #=> requiring root access

# sudo cp $ARCHBUILDS/root/bashrc ~/.bashrc  # copying it so that broot can ammend it
# sudo ln -sf $ARCHBUILDS/root/bash_profile ~/.bash_profile

# [[ -d /usr/share/fonts/FontSquirrel ]] && sudo rm -r /usr/share/fonts/FontSquirrel; sudo ln -sf /mnt/9QG2FFEE/Share-IT-Copied/CrossPlatform/Fonts/FontSquirrel-forArch /usr/share/fonts/FontSquirrel
# # ln -sf /mnt/9QG2FFEE/Share-IT-Copied/MSWin/Microsoft/Fonts/Win10-forArch      /usr/share/fonts/Win10

