#!/bin/bash
# vim: fdl=1:

# $ bash $bSc/4-whenWM/symlinks.sh

#=> 0 check $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

# #=> 1 Dropbox vimfiles
# sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim

# #=> 1 email config
# cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
# cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $lclm/notmuch-config-backup ~/.notmuch-config

# #=> 1 LaTeX
# rm -r ~/texmf/tex/latex/jo; ln -s $CrPl/LaTeX/jo ~/texmf/tex/latex/jo

#=> 1 Thunderbird safely
ln -sf $ARCHBUILDS/jo/TS/locks.sh ~/Arch/Tlocks.sh
sudo ln -sf $ARCHBUILDS/jo/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# pb /usr/local/bin/thunderbird_safely
sudo ln -sf $ARCHBUILDS/jo/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# pb /usr/share/applications/thunderbird_safely.desktop

# #=> 1 urxvt 1 extensions
# rm -r ~/.urxvt/ext; ln -s $ARCHBUILDS/jo/urxvt/Perls ~/.urxvt/ext
# # e -la ~/.urxvt
# # r ~/.urxvt

