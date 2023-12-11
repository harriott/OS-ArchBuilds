#!/bin/bash
# vim: sw=2:

# build script
# bash $OSAB/bs-symlinks/jo-0.sh

set -e

#=> ansiweather
ln -sf $ABjo/WAN/ansiweather ~/.ansiweatherrc

#=> Bash
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile             ~/.bash_profile
ln -sf $machBld/jo/Bash/bashrc        ~/.bashrc
ln -sf $Bash/bashrc-console           ~/.bashrc-console
ln -sf $OSAB/Bash/bashrc-generic      ~/.bashrc-generic
ln -sf $OSAB/Bash/GNUReadline-inputrc ~/.inputrc
ln -sf $machBld/export-machine        ~/.export-machine
ln -sf $OSAB/Bash/export-storage      ~/.export-storage
ln -sf $Bash/export-jo                ~/.export-jo
ln -sf $Bash/bash_history.sh          ~/Arch/bash_history.sh

# e -la ~

#=> CliFM
[ -d ~/.config/clifm ] || mkdir -p ~/.config/clifm
[ -d ~/.config/clifm/plugins ] || mkdir -p ~/.config/clifm/plugins
[ -d ~/.config/clifm/profiles ] || mkdir -p ~/.config/clifm/profiles
[ -d ~/.config/clifm/profiles/default ] || mkdir -p ~/.config/clifm/profiles/default
if [ -s "/usr/bin/clifm" ]; then
  ln -sf $ABjo/CliFM/clifmrc ~/.config/clifm/profiles/default/clifmrc
  for p in BFG colors img_viewer; do
    c=$ABjo/CliFM/$p.sh
    chmod +x $c
    ln -sf $c ~/.config/clifm/plugins/$p.sh
  done
fi

#=> cmus
ln -sf $ABjo/wm/cmusqueue.sh   ~/Arch/cmusqueue.sh
ln -sf $ABjo/wm/cmus_notify.sh ~/.local/share/cmus_notify.sh
ln -sf $ABjo/wm/cmus-rc.conf   ~/.config/cmus/rc

#=> davfs2.conf
ln -sf $ABjo/WAN/davfs2.conf ~/.davfs2/davfs2.conf

#=> dictrc
ln -sf $ABjo/WAN/dictrc ~/.dictrc

#=> Dunst
ln -sf $Openbox/dunstrc ~/.config/dunst/dunstrc  # requires restarting X

#=> Git
if [[ $myDrA == 1 ]]; then
  ln -sf $machBld/jo/gitconfig ~/.gitconfig
else
  ln -sf $OSAB/bs-2-to_X/1-gitconfig ~/.gitconfig
fi
# points to further convigurations on  $ITstack
# e -la ~/.gitconfig

#=> gpg-agent configuration
ln -sf $ABjo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

#=> for Tex Live Arch packaged install
sudo ln -sf $ABjo/texmf.cnf /usr/share/texmf.cnf  # has no effect...
# e -la /usr/share/texmf.cnf

#=> MIME database
cd $ABjo/mime
for x in *; do ln -sf $ABjo/mime/$x ~/.local/share/mime/packages/$x; done
cd $OSAB/bs-symlinks
e -al ~/.local/share/mime/packages
update-mime-database ~/.local/share/mime

#=> mimeapps.list
[ $host = 'i34G1TU02' ] && ln -sf $machBld/jo/mimeappsList ~/.config/mimeapps.list
# e -la ~/.config/mimeapps.list
# move to  $machLg/jo/mimeapps-n6g.list

#=> nanorc
ln -sf $ABjo/textEdit/nanorc ~/.config/nano/nanorc

#=> pinfo
ln -sf $ABjo/pinforc ~/.pinforc

#=> ranger
cr=~/.config/ranger; [ -d $cr ] && rm -r $cr; ln -sf $OSAB/ranger $cr  # e -adl ~/.config/ranger

#=> Ruby IRB
ln -sf $misc/irbrc ~/.irbrc
# e -la ~/.irbrc

#=> Surfraw
ln -sf $ABjo/WAN/surfraw.conf ~/.config/surfraw/conf

#=> tmux
ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> vim variants 0 $vimfiles
# symlinked in  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

#=> vim variants 1 entry points
ln -sf $machBld/jo/gvimrc ~/.gvimrc  # e -la ~/.gvimrc
ln -sf $ABjo/textEdit/Vim/vimrc ~/.vimrc

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
ln -sf $ABjo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> w3m
ln -sf $ABjo/WAN/w3m/config ~/.w3m/config
ln -sf $ABjo/WAN/w3m/keymap ~/.w3m/keymap
ln -sf $ABjo/WAN/w3m/omnibar_duckduckgo.cgi ~/.w3m/cgi-bin/omnibar_duckduckgo.cgi

#=> X
ln -sf $ABjo/wm/Xresources/Xresources                       ~/.Xresources
  ln -sf $ABjo/wm/Xresources/fontUM                         ~/.Xresources-font
  [[ $myDrA == 1 ]] && ln -sf $ABjo/wm/Xresources/fontNF    ~/.Xresources-font
  ln -sf $ABjo/wm/Xresources/colorschemes/LukeSmith-gruvbox ~/.Xresources-LukeSmith-gruvbox
ln -sf $ABjo/xbindkeysrc                                    ~/.xbindkeysrc  # mouse wheel
ln -sf $ABjo/xinitrcs/openbox                               ~/.xinitrc
  [ $host = 'AsusW202' ] && ln -sf $ABjo/xinitrcs/awesome   ~/.xinitrc
