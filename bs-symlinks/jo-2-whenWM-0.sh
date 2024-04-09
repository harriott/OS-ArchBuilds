#!/bin/bash
# vim: sw=2:

# bash $OSAB/bs-symlinks/jo-2-whenWM-0.sh
# not dependent on  $OSAB

set -e

# #=> Emacs configure
# ln -sf $misc/CP/Emacs/custom.el ~/.emacs.d/custom.el
# ln -sf $misc/CP/Emacs/early-init.el ~/.emacs.d/early-init.el
# ln -sf $misc/CP/Emacs/init.el ~/.emacs.d/init.el
# ln -sf $misc/CP/Emacs/lisp ~/.emacs.d/lisp
# ln -sf $TeNo/Emacs/diary ~/.emacs.d/diary
# ln -sf $onGH/harriott-zenburn-emacs ~/.emacs.d/harriott-zenburn-emacs
# # e -la ~/.emacs.d/

# #=> email config
# cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
# cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
# cp -f $lclm/notmuch-config-backup ~/.notmuch-config

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

#=> vimfiles - nvim
sudo rm -r ~/.config/nvim
mkdir -p   ~/.config/nvim
mkdir      ~/.config/nvim/lua
mkdir      ~/.config/nvim/pack
mkdir      ~/.config/nvim/plugin
# ln -sf $ABjo/textEdit/Vim/init.vim ~/.config/nvim/init.vim
ln -s $vimfiles/vim/after              ~/.config/nvim/after
ln -s $vimfiles/vim/filetype.vim       ~/.config/nvim/filetype.vim
ln -s $vimfiles/vim/ftplugin           ~/.config/nvim/ftplugin
ln -s $vimfiles/nvim/init.vim          ~/.config/nvim/init.vim
ln -s $vimfiles/vim/lua-init.lua       ~/.config/nvim/lua/init.lua
ln -s $vimfiles/vim/packs-cp           ~/.config/nvim/pack/packs-cp
ln -s $vimfiles/nvim/packs-nvim        ~/.config/nvim/pack/packs-nvim
ln -s $vimfiles/vim/packs-unix         ~/.config/nvim/pack/packs-unix
ln -s $vimfiles/vim/plugin/plugin.vim  ~/.config/nvim/plugin/plugin.vim
ln -s $vimfiles/nvim/plugins.lua       ~/.config/nvim/plugin/plugins.lua
ln -s $vimfiles/vim/plugin/plugins.vim ~/.config/nvim/plugin/plugins.vim
ln -s $vimfiles/vim/spell              ~/.config/nvim/spell
ln -s $vimfiles/vim/syntax             ~/.config/nvim/syntax
ln -s $vimfiles/vim/thesaurus          ~/.config/nvim/thesaurus
eza -adl ~/.config/nvim/*
eza -adl ~/.config/nvim/pack/*
eza -adl ~/.config/nvim/plugin/*

# #=> vimfiles - vim
# vim entry points are symlinked in  $OSAB/bs-symlinks/jo-0.sh
# sudo rm -r ~/.vim
# mkdir -p ~/.vim/pack
#   ln -s $vimfiles/vim/after        ~/.vim/after
#   ln -s $vimfiles/vim/ftplugin     ~/.vim/ftplugin
#   ln -s $vimfiles/vim/packs-cp     ~/.vim/pack/packs-cp
#   ln -s $vimfiles/vim/packs-unix   ~/.vim/pack/packs-unix
#   ln -s $vimfiles/vim/plugin       ~/.vim/plugin
#   ln -s $vimfiles/vim/spell        ~/.vim/spell
#   ln -s $vimfiles/vim/syntax       ~/.vim/syntax
#   ln -s $vimfiles/vim/thesaurus    ~/.vim/thesaurus
#   ln -s $vimfiles/vim/filetype.vim ~/.vim/filetype.vim
# eza -adl ~/.vim*
# eza -adl ~/.vim/*
# eza -adl ~/.vim/pack/*

