#!/bin/bash
# vim: sw=2:

# logged in as user

#=> 0 Bash
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile                   ~/.bash_profile
ln -sf $MACHINE/jo/Bash/bashrc              ~/.bashrc
ln -sf $Bash/bashrc-console                 ~/.bashrc-console
ln -sf $ARCHBUILDS/Bash/bashrc-generic      ~/.bashrc-generic
ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc ~/.inputrc
ln -sf $MACHINE/export-machine              ~/.export-machine
ln -sf $ARCHBUILDS/Bash/export-storage      ~/.export-storage
ln -sf $Bash/export-jo                      ~/.export-jo
ln -sf $Bash/bash_history.sh                ~/Arch/bash_history.sh

#=> 0 Git
if [[ $myDrA == 1 ]]; then
  ln -sf $MACHINE/jo/gitconfig ~/.gitconfig
else
  ln -sf $bs/2-to_X/1-gitconfig ~/.gitconfig
fi
# points to further convigurations on  $ITstack
# e -la ~/.gitconfig

#=> 0 nanorc
ln -sf $ARCHBUILDS/jo/textEdit/nanorc ~/.config/nano/nanorc

#=> 0 pinfo
ln -sf $ARCHBUILDS/jo/pinforc ~/.pinforc

#=> 0 ranger
ln -sf $ARCHBUILDS/jo/ranger ~/.config/ranger

#=> 0 SSH config
if [[ $myDrA == 1 ]]; then
  ln -sf $CP/SSHconfig/$host ~/.ssh/config
fi

#=> 0 tmux
ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> 0 vims
ln -sf $MACHINE/jo/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/textEdit/Vim/vimrc ~/.vimrc

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
ln -sf $ARCHBUILDS/jo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> 1 X
ln -sf $ARCHBUILDS/jo/xbindkeysrc                         ~/.xbindkeysrc  # mouse wheel
ln -sf $ARCHBUILDS/jo/xinitrcs/openbox                    ~/.xinitrc  # calls $MACHINE/jo/Xresources
ln -sf $Openbox/Xresources/Xresources                     ~/.Xresources
ln -sf $Openbox/Xresources/colorschemes/LukeSmith-gruvbox ~/.Xresources-LukeSmith-gruvbox

#=> 2 MIME database
ln -sf $ARCHBUILDS/jo/mediawiki.xml ~/.local/share/mime/packages/mediawiki.xml
  update-mime-database ~/.local/share/mime

#=> 3 visual check
find ~ -mindepth 1 -maxdepth 3 -type l -ls

