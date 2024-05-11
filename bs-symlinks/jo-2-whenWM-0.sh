#!/bin/bash
# vim: sw=2:

# bash $OSAB/bs-symlinks/jo-2-whenWM-0.sh
# not dependent on  $OSAB

set -e

# #=> Alacritty with Nvim
# ln -sf $machBld/jo/openbox/AlacrittyNvim.sh ~/.config/openbox/AlacrittyNvim.sh

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
mkdir -p   ~/.config/nvim/pack
echo >     ~/.config/nvim/last_directory
mkdir      ~/.config/nvim/plugin
ln -s $vimfiles/vim/after              ~/.config/nvim/after
ln -s $vimfiles/vim/filetype.vim       ~/.config/nvim/filetype.vim
ln -s $vimfiles/vim/ftplugin           ~/.config/nvim/ftplugin
ln -s $vimfiles/nvim/init.vim          ~/.config/nvim/init.vim
ln -s $vimfiles/nvim/lua               ~/.config/nvim/lua
ln -s $vimfiles/vim/packs-cp           ~/.config/nvim/pack/cp
ln -s $vimfiles/vim/packs-unix         ~/.config/nvim/pack/unix
ln -s $vimfiles/vim/plugin/plugin.vim  ~/.config/nvim/plugin/plugin.vim
ln -s $vimfiles/vim/plugin/plugins.vim ~/.config/nvim/plugin/plugins.vim
ln -s $vimfiles/vim/spell              ~/.config/nvim/spell
ln -s $vimfiles/vim/syntax             ~/.config/nvim/syntax
ln -s $vimfiles/vim/thesaurus          ~/.config/nvim/thesaurus
for dir in '' pack plugin; do
  echo  ~/.config/nvim/$dir
  pushd ~/.config/nvim/$dir > /dev/null; eza -al; popd > /dev/null
done

# #=> vimfiles - vim
# # vim entry points are symlinked in  $OSAB/bs-symlinks/jo-0.sh
# sudo rm -r ~/.vim
# mkdir -p ~/.vim/pack
#   ln -s $vimfiles/vim/after        ~/.vim/after
#   ln -s $vimfiles/vim/ftplugin     ~/.vim/ftplugin
#   ln -s $vimfiles/vim/packs-cp     ~/.vim/pack/cp
#   ln -s $vimfiles/vim/packs-unix   ~/.vim/pack/unix
#   ln -s $vimfiles/vim/plugin       ~/.vim/plugin
#   ln -s $vimfiles/vim/spell        ~/.vim/spell
#   ln -s $vimfiles/vim/syntax       ~/.vim/syntax
#   ln -s $vimfiles/vim/thesaurus    ~/.vim/thesaurus
#   ln -s $vimfiles/vim/filetype.vim ~/.vim/filetype.vim
# eza -adl ~/.vim*
# eza -adl ~/.vim/*
# eza -adl ~/.vim/pack/*

# #=> vimfiles - vimtest
# sudo rm -r ~/.vimtest
# mkdir -p ~/.vimtest/pack/packs-cp/opt
# mkdir    ~/.vimtest/plugin
# ln -s $vimfiles/test/filetype.vim              ~/.vimtest/filetype.vim
# ln -s $vimfiles/test/plugin.vim                ~/.vimtest/plugin/plugin.vim
# ln -s $vimfiles/test/plugins.vim               ~/.vimtest/plugin/plugins.vim
# ln -s $vimfiles/test/vimrc.vim                 ~/.vimtest/vimrc.vim
# ln -s $vimfiles/vim/packs-cp/opt/bufferize.vim ~/.vimtest/pack/cp/opt/bufferize.vim
# ln -s $vimfiles/vim/packs-cp/opt/fzf.vim       ~/.vimtest/pack/cp/opt/fzf.vim
# ln -s $vimfiles/vim/packs-cp/opt/vim-markdown  ~/.vimtest/pack/cp/opt/vim-markdown
# ln -s $vimfiles/vim/packs-cp/opt/vim-dokuwiki  ~/.vimtest/pack/cp/opt/vim-dokuwiki
# ln -s $vimfiles/vim/packs-cp/opt/vim-bbcode    ~/.vimtest/pack/cp/opt/vim-bbcode
# eza -adl ~/.vimtest*
# eza -adl ~/.vimtest/*
# eza -adl ~/.vimtest/pack/*

