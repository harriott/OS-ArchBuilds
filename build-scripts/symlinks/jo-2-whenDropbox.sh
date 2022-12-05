#!/bin/bash
# vim: sw=2:

# bash $bSc/symlinks/jo-2-whenDropbox.sh

set -e

# #=> Emacs configure
# ln -sf $onGH/misc/Emacs/custom.el ~/.emacs.d/custom.el
# ln -sf $onGH/misc/Emacs/early-init.el ~/.emacs.d/early-init.el
# ln -sf $onGH/misc/Emacs/init.el ~/.emacs.d/init.el
# ln -sf $onGH/misc/Emacs/lisp ~/.emacs.d/lisp
# ln -sf $TeNo/TN/Emacs/diary ~/.emacs.d/diary
# ln -sf $GHrUse/emacs/harriott-zenburn-emacs ~/.emacs.d/harriott-zenburn-emacs
# # e -la ~/.emacs.d/

# #=> email config
# cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
# cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $lclm/notmuch-config-backup ~/.notmuch-config

# #=> LanguageTool
# # needed for command-line usage
# sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# # e -adl /usr/share/java/LanguageTool

#=> LaTeX
lj=~/texmf/tex/latex/jo; [ -d $lj ] && rm -r $lj; ln -s $CrPl/LaTeX/jo $lj
# e -adl ~/texmf/tex/latex/jo

# #=> mdfpdf Pandoc defaults
# ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
# ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

# #=> Pandoc templates
# pt=~/.pandoc/templates; [ -d $pt ] && rm -r $pt; ln -sf $onGH/pandoc-templates $pt
# # e -adl ~/.pandoc/templates

# #=> SSH config
# ln -sf $CrPl/SSHconfig/$host ~/.ssh/config

# #=> Spacemacs
# sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# # e -la /usr/share/applications/spacemacs.desktop
# sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# # pb /usr/local/bin/spacemacs

# #=> Thunderbird safely
# ln -sf $ABjo/wm/TS/locks.sh ~/Arch/locks.sh
# sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# # pb /usr/local/bin/thunderbird_safely
# sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# # pb /usr/share/applications/thunderbird_safely.desktop

#=> urxvt extensions
[ -d ~/.urxvt ] || mkdir ~/.urxvt
# r $ABjo/wm/urxvt/Perls
ue=~/.urxvt/ext; [ -d $ue ] && rm -r $ue; ln -s $ABjo/wm/urxvt/Perls $ue
# rm -r ~/.urxvt/ext; ln -s $ABjo/wm/urxvt/Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

#=> vimfiles
sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim
# e -adl ~/.vim

