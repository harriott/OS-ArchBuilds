#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/symlinks/jo-2-whenDropbox.sh

set -e

#=> Emacs configure
ln -sf $onGH/misc/Emacs/custom.el ~/.emacs.d/custom.el
ln -sf $onGH/misc/Emacs/early-init.el ~/.emacs.d/early-init.el
ln -sf $onGH/misc/Emacs/init.el ~/.emacs.d/init.el
ln -sf $onGH/misc/Emacs/lisp ~/.emacs.d/lisp
ln -sf $core/TextNotes/TN/Emacs/diary ~/.emacs.d/diary
ln -sf $GHrUse/emacs/harriott-zenburn-emacs ~/.emacs.d/harriott-zenburn-emacs
# e -la ~/.emacs.d/

# #=> Emacs safely 0 install
# ln -sf $ABjo/Emacs/ES/locks.sh ~/Arch/Elocks.sh
# sudo ln -sf $ABjo/Emacs/ES/emacs_safely.sh /usr/local/bin/emacs_safely
# # pb /usr/local/bin/emacs_safely
# sudo ln -sf $ABjo/Emacs/ES/emacs_safely.desktop /usr/share/applications/emacs_safely.desktop
# # pb /usr/share/applications/emacs_safely.desktop

# #=> Emacs safely 1 remove
# rm ~/Arch/Elocks.sh
# sudo rm /usr/local/bin/emacs_safely
# sudo rm /usr/share/applications/emacs_safely.desktop

#=> email config
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config

# #=> LanguageTool
# # needed for command-line usage
# sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# # e -la /usr/share/java

#=> LaTeX
rm -r ~/texmf/tex/latex/jo; ln -s $CrPl/LaTeX/jo ~/texmf/tex/latex/jo

# #=> mdfpdf Pandoc defaults
# ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
# ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

# #=> Pandoc templates
# pt=~/.pandoc/templates; [ -d $pt ] && rm -r $pt; ln -sf $onGH/pandoc-templates $pt

# #=> SSH config
# ln -sf $CrPl/SSHconfig/$host ~/.ssh/config

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# e -la /usr/share/applications/spacemacs.desktop
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# pb /usr/local/bin/spacemacs

#=> Thunderbird safely
ln -sf $ABjo/wm/TS/locks.sh ~/Arch/Tlocks.sh
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# pb /usr/local/bin/thunderbird_safely
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# pb /usr/share/applications/thunderbird_safely.desktop

#=> urxvt extensions
# r $ABjo/wm/urxvt/Perls
rm -r ~/.urxvt/ext; ln -s $ABjo/wm/urxvt/Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

#=> vimfiles
sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim

