#!/bin/bash
# vim: sw=2:

# . $OSAB/nodes-set/jo-2-whenWM-0.sh
# not dependent on  $OSAB
#  except  lnd  defined in  $OSAB/Bash/bashrc-generic

#=> Emacs configure
ln -sf $misc/CP/Emacs/custom.el ~/.emacs.d/custom.el
ln -sf $misc/CP/Emacs/early-init.el ~/.emacs.d/early-init.el
ln -sf $misc/CP/Emacs/init.el ~/.emacs.d/init.el
ln -sf $misc/CP/Emacs/lisp ~/.emacs.d/lisp
ln -sf $TeNo/Emacs/diary ~/.emacs.d/diary
ln -sf $onGH/harriott-zenburn-emacs ~/.emacs.d/harriott-zenburn-emacs
# e -la ~/.emacs.d/

#=> CLM config
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config
maild=~/.local/share/mail
for m in $maild $maild/fm $maild/gmx $maild/zou; do
  [ -d $m ] || mkdir $m; done

#=> LaTeX
lnd $LTXj ~/texmf/tex/latex/jo
# e -adl ~/texmf/tex/latex/jo

#=> mdfpdf Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml
e -adl ~/.pandoc/defaults/*

#=> music scripts
ln -sf $ABjo/music/music.sh ~/.config/music.sh

#=> Openbox - Alacritty with Nvim
ln -sf $machBld/jo/openbox/AlacrittyNvim.sh ~/.config/openbox/AlacrittyNvim.sh

#=> Openbox - shift+PrtSc disabled - notification
# for  i34G1TU02  &  sbMb
ln -sf $Openbox/shiftPrtSc.sh ~/.config/openbox/shiftPrtSc.sh

#=> Pandoc templates
lnd $onGH/pandoc-templates ~/.pandoc/templates
# e -adl ~/.pandoc/templates

#=> SSH config
ln -sf $ITsCP/networking-SSHconfig/$host ~/.ssh/config
# e -la ~/.ssh/config
# pb ~/.ssh/config

#=> vimfiles - nvim 0 empty 0
[ -d "$nvim" ] && sudo rm -r $nvim
mkdir -p $nvim/pack
echo > ~/lastVimDirectory  # ($vfv/enter/vimrc.vim)
mkdir $nvim/plugin

# #=> vimfiles - nvim 1 populate test
# ln -s $DCGRs/CP/Vim/junegunn-vim-plug/plug.vim ~/.local/share/nvim/site/autoload/plug.vim
# # ln -s $vimfiles/vim/after             $nvim/after
# # ln -s $vimfiles/vim/filetype.vim      $nvim/filetype.vim
# # ln -s $vimfiles/vim/ftplugin          $nvim/ftplugin
# ln -s $vimfiles/test/configs/init.vim $nvim/init.vim
# # ln -s $vimfiles/nvim/lua              $nvim/lua
# # ln -s $vimfiles/vim/packs/packs-colo  $nvim/pack/colo
# # ln -s $vimfiles/vim/packs/packs-cp    $nvim/pack/cp
# # ln -s $vimfiles/vim/packs/packs-unix  $nvim/pack/unix
# # ln -s $vfv/plugin/packs.vim  $nvim/plugin/packs.vim
# # ln -s $vfv/plugin/plugin.vim $nvim/plugin/plugin.vim
# # ln -s $vimfiles/vim/spell             $nvim/spell
# # ln -s $vimfiles/vim/syntax            $nvim/syntax
# # ln -s $vimfiles/vim/thesaurus         $nvim/thesaurus

#=> vimfiles - nvim 1 populate use
ln -s $vimfiles/vim/after               $nvim/after
ln -s $vimfiles/vim/filetype.vim        $nvim/filetype.vim
ln -s $vimfiles/vim/ftplugin            $nvim/ftplugin
ln -s $vimfiles/nvim/init.vim           $nvim/init.vim
ln -s $vimfiles/nvim/lua                $nvim/lua
ln -s $vimfiles/vim/packs/packs-colo    $nvim/pack/colo
ln -s $vimfiles/vim/packs/packs-cp-all  $nvim/pack/cp-all
ln -s $vimfiles/vim/packs/packs-cp-full $nvim/pack/cp-full
ln -s $vimfiles/vim/packs/packs-unix    $nvim/pack/unix
ln -s $vfv/plugin/packs.vim             $nvim/plugin/packs.vim
ln -s $vfv/plugin/plugin.vim            $nvim/plugin/plugin.vim
ln -s $vimfiles/vim/spell               $nvim/spell
ln -s $vimfiles/vim/syntax              $nvim/syntax
ln -s $vimfiles/vim/thesaurus           $nvim/thesaurus

#=> vimfiles - nvim 2 check
lsd -al $nvim
for dir in '' pack plugin; do
  echo  $nvim/$dir
  pushd $nvim/$dir > /dev/null; lsd -al; popd > /dev/null
done

#=> vimfiles - vim entry points
ln -sf $machBld/jo/gvimrc ~/.gvimrc  # e -la ~/.gvimrc
ln -sf $ABjo/textEdit/Vim/vimrc ~/.vimrc

#=> vimfiles - vim configurations
sudo rm -r ~/.vim
mkdir -p ~/.vim/pack
mkdir ~/.vim/plugin
ln -s $vimfiles/vim/after               ~/.vim/after
ln -s $vimfiles/vim/ftplugin            ~/.vim/ftplugin
ln -s $vimfiles/vim/packs/packs-colo    ~/.vim/pack/colo
ln -s $vimfiles/vim/packs/packs-cp-all  ~/.vim/pack/cp-all
ln -s $vimfiles/vim/packs/packs-cp-full ~/.vim/pack/cp-full
ln -s $vimfiles/vim/packs/packs-unix    ~/.vim/pack/unix
ln -s $vfv/plugin/packs.vim             ~/.vim/plugin/packs.vim
ln -s $vfv/plugin/plugin.vim            ~/.vim/plugin/plugin.vim
ln -s $vimfiles/vim/spell               ~/.vim/spell
ln -s $vimfiles/vim/syntax              ~/.vim/syntax
ln -s $vimfiles/vim/thesaurus           ~/.vim/thesaurus
ln -s $vimfiles/vim/filetype.vim        ~/.vim/filetype.vim
eza -adl ~/.vim*
eza -adl ~/.vim/*
eza -adl ~/.vim/pack/*
eza -adl ~/.vim/plugin/*

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

