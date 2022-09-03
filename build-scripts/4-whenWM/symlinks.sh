#!/bin/bash
# vim: fdl=1:

# $ bash $bSc/4-whenWM/symlinks.sh

#=> 0 check $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 Dropbox vimfiles
sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim

#=> 1 email config
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config

#=> 1 LaTeX
rm -r ~/texmf/tex/latex/jo; ln -s $CrPl/LaTeX/jo ~/texmf/tex/latex/jo

#=> 1 thunderbird_safely
ln -sf $ARCHBUILDS/jo/TS/locks.sh ~/Arch/locks.sh
sudo ln -sf $ARCHBUILDS/jo/TS/ts.sh /usr/local/bin/thunderbird_safely
sudo ln -sf $ARCHBUILDS/jo/TS/ts.desktop /usr/share/applications/thunderbird_safely.desktop

#=> 1 urxvt 1 extensions
rm -r ~/.urxvt/ext; ln -s $ARCHBUILDS/jo/urxvt/Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

