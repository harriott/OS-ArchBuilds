#!/bin/bash
# vim: sw=2:

# bash $OSAB/nodes-set/jo-3-encoding.sh
# Vim's won't work unless the  $vfv/packs/packs-*  are populated, which is the case in my  $Drpbx

#=> Emacs configure
[ -d "~/.emacs.d" ] && sudo rm -r ~/.emacs.d
mkdir -p ~/.emacs.d
ln -sf $misc/CP/Emacs/custom.el ~/.emacs.d/custom.el
ln -sf $misc/CP/Emacs/early-init.el ~/.emacs.d/early-init.el  # pb ~/.emacs.d/early-init.el
ln -sf $misc/CP/Emacs/init.el ~/.emacs.d/init.el
ln -sf $misc/CP/Emacs/lisp ~/.emacs.d/lisp
ln -sf $TeNo/Emacs/diary ~/.emacs.d/diary
ln -sf $onGH/zenburn-emacs ~/.emacs.d/zenburn-emacs
eza -adl ~/.emacs.d/*

#=> SSH config
ln -sf $cITCP/networking-SSHconfig/$host ~/.ssh/config
# e -la ~/.ssh/config
# pb ~/.ssh/config

#=> vimfiles - nvim 0 empty 0
[ -d "$nvim" ] && sudo rm -r $nvim
mkdir -p $nvim/pack
echo > ~/lastVimDirectory  # ($vfv/enter/vimrc.vim)
mkdir $nvim/plugin

# #=> vimfiles - nvim 1 populate test
# ln -s $cGRs/d-CP/d-Vim-Vim/r-junegunn-vim-plug/plug.vim ~/.local/share/nvim/site/autoload/plug.vim
# ln -s $vimfiles/test/init.vim $nvim/init.vim

#=> vimfiles - nvim 1 populate use
ln -s $vfv/after               $nvim/after
ln -s $vfv/filetype.vim        $nvim/filetype.vim
ln -s $vfv/ftplugin            $nvim/ftplugin
ln -s $vfn/init.vim            $nvim/init.vim
ln -s $vfn/lua                 $nvim/lua
ln -s $vfn/lsp                 $nvim/lsp
ln -s $vfv/packs/packs-colo    $nvim/pack/colo
ln -s $vfv/packs/packs-cp-all  $nvim/pack/cp-all
ln -s $vfv/packs/packs-cp-full $nvim/pack/cp-full
ln -s $vfv/packs/packs-unix    $nvim/pack/unix
ln -s $vfv/plugin/packs.vim    $nvim/plugin/packs.vim
ln -s $vfv/plugin/plugin.vim   $nvim/plugin/plugin.vim
ln -s $vfv/spell               $nvim/spell
ln -s $vfv/syntax              $nvim/syntax
ln -s $vfv/thesaurus           $nvim/thesaurus
eza -adl $nvim/*

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
ln -s $vfv/after               ~/.vim/after
ln -s $vfv/ftplugin            ~/.vim/ftplugin
ln -s $vfv/packs/packs-colo    ~/.vim/pack/colo
ln -s $vfv/packs/packs-cp-all  ~/.vim/pack/cp-all
ln -s $vfv/packs/packs-cp-full ~/.vim/pack/cp-full
ln -s $vfv/packs/packs-unix    ~/.vim/pack/unix
ln -s $vfv/plugin/packs.vim    ~/.vim/plugin/packs.vim  # remove this one before  $Drpbx
ln -s $vfv/plugin/plugin.vim   ~/.vim/plugin/plugin.vim
ln -s $vfv/spell               ~/.vim/spell
ln -s $vfv/syntax              ~/.vim/syntax
ln -s $vfv/thesaurus           ~/.vim/thesaurus
ln -s $vfv/filetype.vim        ~/.vim/filetype.vim
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
# ln -s $vfv/packs-cp/opt/bufferize.vim ~/.vimtest/pack/cp/opt/bufferize.vim
# ln -s $vfv/packs-cp/opt/fzf.vim       ~/.vimtest/pack/cp/opt/fzf.vim
# ln -s $vfv/packs-cp/opt/vim-markdown  ~/.vimtest/pack/cp/opt/vim-markdown
# ln -s $vfv/packs-cp/opt/vim-dokuwiki  ~/.vimtest/pack/cp/opt/vim-dokuwiki
# ln -s $vfv/packs-cp/opt/vim-bbcode    ~/.vimtest/pack/cp/opt/vim-bbcode
# eza -adl ~/.vimtest*
# eza -adl ~/.vimtest/*
# eza -adl ~/.vimtest/pack/*

