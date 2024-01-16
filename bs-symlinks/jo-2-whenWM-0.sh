#!/bin/bash
# vim: sw=2:

# bash $OSAB/bs-symlinks/jo-2-whenWM-0.sh
# not dependent on  $OSAB

set -e

#=> Emacs configure
ln -sf $misc/CP/Emacs/custom.el ~/.emacs.d/custom.el
ln -sf $misc/CP/Emacs/early-init.el ~/.emacs.d/early-init.el
ln -sf $misc/CP/Emacs/init.el ~/.emacs.d/init.el
ln -sf $misc/CP/Emacs/lisp ~/.emacs.d/lisp
ln -sf $TeNo/Emacs/diary ~/.emacs.d/diary
ln -sf $onGH/harriott-zenburn-emacs ~/.emacs.d/harriott-zenburn-emacs
# e -la ~/.emacs.d/

# #=> email config
# cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
# cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $lclm/notmuch-config-backup ~/.notmuch-config

# #=> LanguageTool
# # needed for command-line usage
# sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# # e -adl /usr/share/java/LanguageTool

# #=> LaTeX
# lnd $LTXj ~/texmf/tex/latex/jo
# # e -adl ~/texmf/tex/latex/jo

# #=> mdfpdf Pandoc defaults
# ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
# ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml
# # er ~/.pandoc/defaults/*

# #=> MPD - music directories gathered
# if [ $host = 'i34G1TU02' ]; then
#   ln -sf $Openbox/toggleMusicGood.sh ~/.config/openbox/toggleMusicGood.sh
#   ln -sf $Openbox/toggleMusicJoy.sh ~/.config/openbox/toggleMusicJoy.sh
# elif [ $host = 'sbMb' ]; then
#   ln -sf $Openbox/toggleMusicGood.sh ~/.config/openbox/toggleMusicGood.sh
#   ln -sf $machBld/jo/toggleMusicJoy.sh ~/.config/openbox/toggleMusicJoy.sh
# fi

# #=> Pandoc templates
# lnd $onGH/pandoc-templates ~/.pandoc/templates
# # e -adl ~/.pandoc/templates

# #=> shift+PrtSc disabled - notification
# # for  i34G1TU02  &  sbMb
# ln -sf $Openbox/shiftPrtSc.sh ~/.config/openbox/shiftPrtSc.sh

# #=> SSH config
# ln -sf $CrPl/networking/SSHconfig/$host ~/.ssh/config
# # e -la ~/.ssh/config
# # pb ~/.ssh/config

# #=> vimfiles
# sudo rm -r ~/.vim; ln -s $vimfiles ~/.vim  # file ~/.vim
# [ -d "~/.vimtest" ] && sudo rm -r ~/.vimtest; ln -s $misc/CP/vimtest ~/.vimtest
# # e -adl ~/.vim*

