#!/bin/bash
# vim: fdl=1:

#=> 0 check $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 Dropbox vimfiles
sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim

#=> 1 email config
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config

#=> 1 LaTeX
rm -r ~/texmf/tex/latex/jo; ln -s $CP/LaTeX/jo ~/texmf/tex/latex/jo

#=> 1 urxvt 0
mkdir -p ~/.urxvt

#=> 1 urxvt 1 extensions
rm -r ~/.urxvt/ext; ln -s $ARCHBUILDS/jo/urxvt/Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

