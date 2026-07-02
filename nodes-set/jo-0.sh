#!/bin/bash
# vim: sw=2:

# bash $OSAB/nodes-set/jo-0.sh

lnd () { [ -d $2 ] && rm -r $2; ln -sf $1 $2; } # symlink a directory
set -e
set -v  # prints each statement here, including comments

#=> ansiweather
ln -sf $ABjo/WAN/ansiweatherrc ~/.ansiweatherrc  # e -l ~/.ansiweatherrc

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

#=> davfs2.conf
[ -d ~/.davfs2/davfs2.conf ] && ln -sf $ABjo/WAN/davfs2.conf ~/.davfs2/davfs2.conf

#=> dictrc
ln -sf $ABjo/WAN/dictrc ~/.dictrc

#=> fastfetch
[ -d ~/.config/fastfetch ] || mkdir -p ~/.config/fastfetch
ln -sf $ABno/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
# es ~/.config/fastfetch/config.jsonc

#=> gpg-agent configuration
gpg --list-keys  # creates populated  ~/.gnupg
ln -sf $OSL/nodes/gpg-agent.conf ~/.gnupg/gpg-agent.conf

#=> kew
[ -d ~/music ] || mkdir -p ~/music
kew path ~/music  # creates  ~/.config/kew/kewrc
ln -sf $ABjo/kewrc ~/.config/kew/kewrc
# b ~/.config/kew/kewrc

#=> MIME database
cd $ABjo/mime
for x in *; do ln -sf $ABjo/mime/$x ~/.local/share/mime/packages/$x; done
cd $OSAB/nodes-set
# eza -al ~/.local/share/mime/packages
update-mime-database ~/.local/share/mime

#=> nanorc
[ -d ~/.config/nano ] || mkdir -p ~/.config/nano
ln -sf $ABjo/textEdit/nanorc ~/.config/nano/nanorc

#=> pinfo
ln -sf $ABjo/pinforc ~/.pinforc

#=> pipecolor
ln -sf $ABjo/pipecolor.toml ~/.pipecolor.toml

#=> ranger
lnd $OSL/nodes/terminal-ranger ~/.config/ranger  # e -adl ~/.config/ranger

#=> Ruby IRB
ln -sf $misc/irbrc ~/.irbrc
# e -la ~/.irbrc

#=> sbMb motherboard temp
if [ $host = 'sbMb' ]; then
  ln -sf $machBld/jo/f1t2t3/log.sh ~/Arch/f1t2t3/log.sh
  ln -sf $machBld/jo/f1t2t3/f1t2t3.sh ~/Arch/f1t2t3/f1t2t3.sh
  # e -la ~/Arch/f1t2t3
fi

# #=> WAN - Surfraw
# [ -d ~/.config/surfraw ] || mkdir -p ~/.config/surfraw
# ln -sf $ABjo/WAN/surfraw.conf ~/.config/surfraw/conf

#=> w3m
[ -d ~/.w3m/cgi-bin ] || mkdir -p ~/.w3m/cgi-bin
ln -sf $ABjo/WAN/w3m/config ~/.w3m/config
ln -sf $ABjo/WAN/w3m/keymap ~/.w3m/keymap
ln -sf $ABjo/WAN/w3m/omnibar_duckduckgo.cgi ~/.w3m/cgi-bin/omnibar_duckduckgo.cgi

