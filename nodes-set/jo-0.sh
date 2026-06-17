#!/bin/bash
# vim: sw=2:

# bash $OSAB/nodes-set/jo-0.sh

set -e
set -v  # prints each statement here, including comments

#=> $notDr
if [[ $myDrA == 1 ]]; then
  [ -d $notDr/GR-NF ] || mkdir -p $notDr/GR-NF
  ln -sf $ITcore/notDr/readme.md $notDr/readme.md  # e -la $notDr/readme.md
  ln -sf $ITcore/notDr/NF.md $notDr/GR-NF/readme.md  # e -la $notDr/GR-NF/readme.md
fi

#=> Alacritty
if [ $host = 'sbMb' ]; then
  ln -sf $machBld/Alacritty/Xfce.toml ~/.alacritty.toml  # $OSAB/mb-sbMb/Alacritty/Xfce.toml
else
  ln -sf $machBld/alacritty.toml ~/.alacritty.toml
   # $OSAB/mb-DOP3040D11S/alacritty.toml
   # $OSAB/mb-HPEB840G38/alacritty.toml
fi
ln -sf $OSAB/nodes-terminal/alacritty-all.toml ~/.alacritty-all.toml
# e -la ~/.alacritty*

#=> ansiweather
ln -sf $ABjo/WAN/ansiweather ~/.ansiweatherrc  # e -l ~/.ansiweatherrc

#=> Chawan
[ -d ~/.config/chawan ] || mkdir -p ~/.config/chawan
ln -sf $ABjo/Chawan/all.toml ~/.config/chawan/config.toml
# e -l ~/.config/chawan/config.toml
# pb ~/.config/chawan/config.toml

#=> cheat
[ -d ~/.config/cheat ] || mkdir -p ~/.config/cheat
ln -sf $ABjo/cheat-conf.yml ~/.config/cheat/conf.yml
# e -l ~/.config/cheat/conf.yml
# pb ~/.config/cheat/conf.yml

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
ln -sf $culLA/jo/cmushnotify.sh ~/.local/share/cmushnotify.sh
[ -d ~/.config/cmus ] || mkdir -p ~/.config/cmus
ln -sf $ABjo/wm/cmus-rc.conf   ~/.config/cmus/rc  # pb ~/.config/cmus/rc

#=> davfs2.conf
[ -d ~/.davfs2/davfs2.conf ] && ln -sf $ABjo/WAN/davfs2.conf ~/.davfs2/davfs2.conf

#=> dictrc
ln -sf $ABjo/WAN/dictrc ~/.dictrc

#=> Dunst
[ -d ~/.config/dunst ] || mkdir -p ~/.config/dunst
ln -sf $ABjo/wm/dunstrc ~/.config/dunst/dunstrc  # requires restarting X
# es ~/.config/dunst/dunstrc

#=> fastfetch
[ -d ~/.config/fastfetch ] || mkdir -p ~/.config/fastfetch
ln -sf $OSAB/nodes-terminal/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
# e -la ~/.config/fastfetch/config.jsonc

#=> fix Calibri in Thunderbird
[ -d ~/.config/fontconfig/conf.d ] || mkdir -p ~/.config/fontconfig/conf.d
ln -sf $ABjo/wm/fontconfig-conf_d-20-no-embedded.conf ~/.config/fontconfig/conf.d/20-no-embedded.conf

#=> Git
ln -sf $machBld/jo/gitconfig ~/.gitconfig
# points to further convigurations on  $ITcore
# e -la ~/.gitconfig

#=> gpg-agent configuration
gpg --list-keys  # creates populated  ~/.gnupg
ln -sf $OSL/nodes/gpg-agent.conf ~/.gnupg/gpg-agent.conf

#=> kew
[ -d ~/music ] || mkdir -p ~/music
kew ~/music
ln -sf $ABjo/kewrc ~/.config/kew/kewrc
# b ~/.config/kew/kewrc

#=> MIME database
cd $ABjo/mime
for x in *; do ln -sf $ABjo/mime/$x ~/.local/share/mime/packages/$x; done
cd $OSAB/nodes-set
eza -al ~/.local/share/mime/packages
update-mime-database ~/.local/share/mime

#=> nanorc
[ -d ~/.config/nano ] || mkdir -p ~/.config/nano
ln -sf $ABjo/textEdit/nanorc ~/.config/nano/nanorc

#=> pinfo
ln -sf $ABjo/pinforc ~/.pinforc

#=> pipecolor
ln -sf $ABjo/pipecolor.toml ~/.pipecolor.toml

#=> ranger
lnd $OSL/nodes/terminal-ranger ~/.config/ranger
e -adl ~/.config/ranger

#=> Ruby IRB
ln -sf $misc/irbrc ~/.irbrc
# e -la ~/.irbrc

#=> sbMb motherboard temp
if [ $host = 'sbMb' ]; then
  ln -sf $machBld/jo/f1t2t3/log.sh ~/Arch/f1t2t3/log.sh
  ln -sf $machBld/jo/f1t2t3/f1t2t3.sh ~/Arch/f1t2t3/f1t2t3.sh
  # e -la ~/Arch/f1t2t3
fi

#=> Surfraw
[ -d ~/.config/surfraw/conf ] && ln -sf $ABjo/WAN/surfraw.conf ~/.config/surfraw/conf

#=> tmux
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf  # e -l ~/.tmux.conf

#=> w3m
[ -d ~/.w3m/cgi-bin ] || mkdir -p ~/.w3m/cgi-bin
ln -sf $ABjo/WAN/w3m/config ~/.w3m/config
ln -sf $ABjo/WAN/w3m/keymap ~/.w3m/keymap
ln -sf $ABjo/WAN/w3m/omnibar_duckduckgo.cgi ~/.w3m/cgi-bin/omnibar_duckduckgo.cgi

#=> WezTerm
ln -sf $OSAB/nodes-terminal/wezterm.lua ~/.wezterm.lua
# e -la ~/.wezterm.lua

