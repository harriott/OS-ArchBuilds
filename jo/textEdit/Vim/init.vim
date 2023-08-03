
" configurations for neovim

" $ABjo/textEdit/Vim/init.vim
"  symlinked in my  $OSAB/bs-symlinks/jo-0.sh
"   pb ~/.config/nvim/init.vim

""> 0 working configuration
" share my gVim configuration
set runtimepath^=~/.vim        " at start
set runtimepath+=~/.vim/after  " at end
let &packpath = &runtimepath
source ~/.vimrc

" for accurate colour codes
set termguicolors
" can turn off with :se notgc

" let g:Hexokinase_highlighters = ['foreground']
let g:Hexokinase_highlighters = ['foregroundfull']
packadd vim-hexokinase

" ""> 1 alternative configuration - test <*f*> keys
" " explore how function keys are working
" source $ABjo/textEdit/Vim/fnKeyTest.vim

