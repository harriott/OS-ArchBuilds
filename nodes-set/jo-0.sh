#!/bin/bash
# vim: sw=2:

# build script
# source $OSAB/nodes-set/jo-0.sh

#=> $notDr
[ -d $notDr/GR-NF ] || mkdir -p $notDr/GR-NF
ln -sf $misc/notDr/notDr.md $notDr/readme.md  # e -la $notDr/readme.md
ln -sf $misc/notDr/NF.md $notDr/GR-NF/readme.md  # e -la $notDr/GR-NF/readme.md

#=> Alacritty
ln -sf $machBld/alacritty.toml ~/.alacritty.toml
ln -sf $OSAB/nodes-terminal/alacritty-all.toml ~/.alacritty-all.toml
# e -la ~/.alacritty*

#=> ansiweather
ln -sf $ABjo/WAN/ansiweather ~/.ansiweatherrc  # e -l ~/.ansiweatherrc

#=> Chawan
[ -d ~/.config/chawan ] || mkdir -p ~/.config/chawan
ln -sf $ABjo/Chawan/all.toml ~/.config/chawan/config.toml
# e -l ~/.config/chawan/config.toml
# pb ~/.config/chawan/config.toml

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
ln -sf $ABjo/wm/dunstrc ~/.config/dunst/dunstrc  # requires restarting X

#=> fix Calibri in Thunderbird
ln -sf $ABjo/wm/fontconfig-conf_d-20-no-embedded.conf ~/.config/fontconfig/conf.d/20-no-embedded.conf

#=> Git
if [[ $myDrA == 1 ]]; then
  ln -sf $machBld/jo/gitconfig ~/.gitconfig
else
  ln -sf $OSAB/bs-2-to_X/1-gitconfig ~/.gitconfig
fi
# points to further convigurations on  $coreIT
# e -la ~/.gitconfig

#=> gpg-agent configuration
ln -sf $OSL/nodes/gpg-agent.conf ~/.gnupg/gpg-agent.conf

#=> for Tex Live Arch packaged install
sudo ln -sf $ABjo/texmf.cnf /usr/share/texmf.cnf  # has no effect...
# e -la /usr/share/texmf.cnf

#=> MIME database
cd $ABjo/mime
for x in *; do ln -sf $ABjo/mime/$x ~/.local/share/mime/packages/$x; done
cd $OSAB/nodes-set
eza -al ~/.local/share/mime/packages
update-mime-database ~/.local/share/mime

#=> mimeapps.list
[ $host = 'DOP3040D11S' ] && ln -sf $machBld/jo/mimeapps.list ~/.config/mimeapps.list
[ $host = 'i34G1TU02' ] && ln -sf $machBld/jo/mimeapps.list ~/.config/mimeapps.list
# e -la ~/.config/mimeapps.list
# move to  $machLg/jo/mimeapps-n6g.list

#=> nanorc
ln -sf $ABjo/textEdit/nanorc ~/.config/nano/nanorc

#=> pinfo
ln -sf $ABjo/pinforc ~/.pinforc

#=> ranger
lnd $OSL/nodes/terminal-ranger ~/.config/ranger
e -adl ~/.config/ranger

#=> Ruby IRB
ln -sf $misc/irbrc ~/.irbrc
# e -la ~/.irbrc

#=> sbMb motherboard temp
ln -sf $machBld/jo/f1t2t3/log.sh ~/Arch/f1t2t3/log.sh
ln -sf $machBld/jo/f1t2t3/f1t2t3.sh ~/Arch/f1t2t3/f1t2t3.sh
# e -la ~/Arch/f1t2t3

#=> Surfraw
ln -sf $ABjo/WAN/surfraw.conf ~/.config/surfraw/conf

#=> tmux
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf  # e -l ~/.tmux.conf

#=> w3m
ln -sf $ABjo/WAN/w3m/config ~/.w3m/config
ln -sf $ABjo/WAN/w3m/keymap ~/.w3m/keymap
ln -sf $ABjo/WAN/w3m/omnibar_duckduckgo.cgi ~/.w3m/cgi-bin/omnibar_duckduckgo.cgi

#=> WezTerm
ln -sf $OSAB/nodes-terminal/wezterm.lua ~/.wezterm.lua
# e -la ~/.wezterm.lua

