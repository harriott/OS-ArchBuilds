" Configuration for neovimm

" symlink this file to  ~/.config/nvim

if 1

  " Share my gVim configuration
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc

  " for accurate colour codes
  set termguicolors
  " can turn off with :se notgc

  " let g:Hexokinase_highlighters = ['foreground']
  let g:Hexokinase_highlighters = ['foregroundfull']
  packadd vim-hexokinase

else

  " Or explore how function keys are working
  source $DROPBOX/$ARCHBUILDS/jo/Vim/fnKeyTest.vim

endif
