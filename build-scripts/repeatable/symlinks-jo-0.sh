#!/bin/bash
# vim: sw=2:

# bash $bSc/anytime/symlinks-jo-0.sh

set -e

#=> ansiweather
ln -sf $ARCHBUILDS/jo/ansiweather ~/.ansiweatherrc

#=> Bash
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile                   ~/.bash_profile
ln -sf $machBld/jo/Bash/bashrc              ~/.bashrc
ln -sf $Bash/bashrc-console                 ~/.bashrc-console
ln -sf $ARCHBUILDS/Bash/bashrc-generic      ~/.bashrc-generic
ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc ~/.inputrc
ln -sf $machBld/export-machine              ~/.export-machine
ln -sf $ARCHBUILDS/Bash/export-storage      ~/.export-storage
ln -sf $Bash/export-jo                      ~/.export-jo
ln -sf $Bash/bash_history.sh                ~/Arch/bash_history.sh

#=> CliFM
ln -sf $ARCHBUILDS/jo/CliFM/clifmrc ~/.config/clifm/profiles/default/clifmrc
for p in BFG colors img_viewer; do
  c=$ARCHBUILDS/jo/CliFM/$p.sh
  chmod +x $c
  ln -sf $c ~/.config/clifm/plugins/$p.sh
done

#=> cmus
ln -sf $ARCHBUILDS/jo/Openbox/cmusqueue.sh ~/Arch/cmusqueue.sh
ln -sf $Openbox/cmus_notify.sh             ~/.local/share/cmus_notify.sh
ln -sf $Openbox/cmus-rc.conf               ~/.config/cmus/rc

#=> Dunst
ln -sf $Openbox/dunstrc ~/.config/dunst/dunstrc  # requires restarting X

#=> Git
if [[ $myDrA == 1 ]]; then
  ln -sf $machBld/jo/gitconfig ~/.gitconfig
else
  ln -sf $bSc/2-to_X/1-gitconfig ~/.gitconfig
fi
# points to further convigurations on  $ITstack
# e -la ~/.gitconfig

#=> gpg-agent configuration
ln -sf $ARCHBUILDS/jo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

#=> for Tex Live
sudo ln -sf $ARCHBUILDS/jo/texmf.cnf /usr/share/texmf.cnf  # has no effect...

#=> LanguageTool
# needed for command-line usage
sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# exa -la /usr/share/java

#=> MIME database
ln -sf $ARCHBUILDS/jo/mediawiki.xml ~/.local/share/mime/packages/mediawiki.xml
  update-mime-database ~/.local/share/mime

#=> mimeapps.list
[ $host = 'i34G1TU02' ] && ln -sf $machBld/jo/mimeappsList ~/.config/mimeapps.list
# e -la ~/.config/mimeapps.list

#=> nanorc
ln -sf $ARCHBUILDS/jo/textEdit/nanorc ~/.config/nano/nanorc

#=> Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

#=> Pandoc templates
pt=~/.pandoc/templates; [ -d $pt ] && rm -r $pt; ln -sf $onGH/pandoc-templates $pt

#=> pinfo
ln -sf $ARCHBUILDS/jo/pinforc ~/.pinforc

#=> ranger
ln -sf $ARCHBUILDS/jo/ranger ~/.config/ranger

#=> SSH config
if [[ $myDrA == 1 ]]; then
  ln -sf $CrPl/SSHconfig/$host ~/.ssh/config
fi

#=> tmux
ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> vims
ln -sf $machBld/jo/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/textEdit/Vim/vimrc ~/.vimrc

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
ln -sf $ARCHBUILDS/jo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> X
ln -sf $ARCHBUILDS/jo/xbindkeysrc                                ~/.xbindkeysrc  # mouse wheel
ln -sf $ARCHBUILDS/jo/xinitrcs/openbox                           ~/.xinitrc
[ $host = 'AsusW202' ] && ln -sf $ARCHBUILDS/jo/xinitrcs/awesome ~/.xinitrc
ln -sf $Openbox/Xresources/Xresources                            ~/.Xresources
ln -sf $Openbox/Xresources/colorschemes/LukeSmith-gruvbox        ~/.Xresources-LukeSmith-gruvbox

#=> Zathura
ln -sf $Openbox/zathurarc ~/.config/zathura/zathurarc

