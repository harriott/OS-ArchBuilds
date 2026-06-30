#!/bin/bash
# vim: sw=2:

# bash $OSAB/nodes-set/jo-1-encoding.sh
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

#=> vimfiles - nvim 0 empty 0
[ -d "$nvim" ] && sudo rm -r $nvim
mkdir -p $nvim/pack
echo > ~/lastVimDirectory  # ($vfv/enter/vimrc.vim)
mkdir $nvim/plugin

#=> vimfiles - nvim 1 populate use
ln -s $vfv/after                          $nvim/after
ln -s $vfv/filetype.vim                   $nvim/filetype.vim
ln -s $vfv/ftplugin                       $nvim/ftplugin
ln -s $vfn/init.vim                       $nvim/init.vim
ln -s $vfn/lua                            $nvim/lua
ln -s $vfn/lsp                            $nvim/lsp
ln -s $vimfiles/repos-packs/packs-colo    $nvim/pack/colo
ln -s $vimfiles/repos-packs/packs-cp-all  $nvim/pack/cp-all
ln -s $vimfiles/repos-packs/packs-cp-full $nvim/pack/cp-full
ln -s $vimfiles/repos-packs/packs-unix    $nvim/pack/unix
ln -s $vfv/plugin/packs.vim               $nvim/plugin/packs.vim
ln -s $vfv/plugin/plugin.vim              $nvim/plugin/plugin.vim
ln -s $vfv/spell                          $nvim/spell
ln -s $vfv/syntax                         $nvim/syntax
ln -s $vfv/thesaurus                      $nvim/thesaurus
eza -adl $nvim/*

#=> vimfiles - nvim 2 check
lsd -al $nvim
for dir in '' pack plugin; do
  echo  $nvim/$dir
  pushd $nvim/$dir > /dev/null; lsd -al; popd > /dev/null
done

#=> vimfiles - vim entry points
if [[ $host =~ HPEB840G3 ]]; then
  ln -sf $OSAB/mb-HPEB840G3x/hi/gvimrc ~/.gvimrc  # e -la ~/.gvimrc
  ln -sf $OSAB/mb-HPEB840G3x/jo/vimrc ~/.vimrc
else
  ln -sf $machBld/jo/gvimrc ~/.gvimrc  # e -la ~/.gvimrc
  ln -sf $ABjo/textEdit/Vim/vimrc ~/.vimrc
fi

#=> vimfiles - vim configurations
sudo rm -r ~/.vim
mkdir -p ~/.vim/pack
mkdir ~/.vim/plugin
ln -s $vfv/after                          ~/.vim/after
ln -s $vfv/ftplugin                       ~/.vim/ftplugin
ln -s $vimfiles/repos-packs/packs-colo    ~/.vim/pack/colo
ln -s $vimfiles/repos-packs/packs-cp-all  ~/.vim/pack/cp-all
ln -s $vimfiles/repos-packs/packs-cp-full ~/.vim/pack/cp-full
ln -s $vimfiles/repos-packs/packs-unix    ~/.vim/pack/unix
ln -s $vfv/plugin/packs.vim               ~/.vim/plugin/packs.vim  # remove this one before  $Drpbx
ln -s $vfv/plugin/plugin.vim              ~/.vim/plugin/plugin.vim
ln -s $vfv/spell                          ~/.vim/spell
ln -s $vfv/syntax                         ~/.vim/syntax
ln -s $vfv/thesaurus                      ~/.vim/thesaurus
ln -s $vfv/filetype.vim                   ~/.vim/filetype.vim
eza -adl ~/.vim*
eza -adl ~/.vim/*
eza -adl ~/.vim/pack/*
eza -adl ~/.vim/plugin/*

