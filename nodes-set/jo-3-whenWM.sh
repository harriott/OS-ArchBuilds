#!/bin/bash
# vim: sw=2:

# https://harriott.github.io/ - Wed 17 Jun 2026

# bash $OSAB/nodes-set/jo-3-whenWM.sh

ln -sf $ABjo/configGtk30Settings.ini ~/.config/gtk-3.0/settings.ini
ln -sf $ABjo/music/MPD/mpd.conf ~/.config/mpd/mpd.conf
ln -sf $ABjo/music/MPD/vimpcrc ~/.config/vimpc/vimpcrc
ln -sf $ABjo/wm/pqivrc ~/.config/pqivrc
ln -sf $ABjo/wm/zathurarc ~/.config/zathura/zathurarc

#=> $notDr
[ -d $notDr/GR-NF ] || mkdir -p $notDr/GR-NF
ln -sf $ITcore/notDr/readme.md $notDr/readme.md  # e -la $notDr/readme.md
ln -sf $ITcore/notDr/NF.md $notDr/GR-NF/readme.md  # e -la $notDr/GR-NF/readme.md

#=> Alacritty
if [ $host = 'DOP3040D11S' ]; then
  ln -sf $OSAB/mb-DOP3040D11S/alacritty.toml ~/.alacritty.toml
elif [[ $host =~ HPEB840G3 ]]; then
  ln -sf $OSAB/mb-HPEB840G3x/hi/alacritty.toml ~/.alacritty.toml
else
  ln -sf $OSAB/mb-sbMb/Alacritty/Xfce.toml ~/.alacritty.toml
fi
ln -sf $OSAB/nodes-terminal/alacritty-all.toml ~/.alacritty-all.toml
# e -la ~/.alacritty*

#=> CLM config
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config
maild=~/.local/share/mail
for m in $maild $maild/fm $maild/gmx $maild/zou; do
  [ -d $m ] || mkdir $m; done

#=> cmus
ln -sf $ABjo/wm/cmusqueue.sh   ~/Arch/cmusqueue.sh
ln -sf $culLA/jo/cmushnotify.sh ~/.local/share/cmushnotify.sh
[ -d ~/.config/cmus ] || mkdir -p ~/.config/cmus
ln -sf $ABjo/wm/cmus-rc.conf   ~/.config/cmus/rc  # pb ~/.config/cmus/rc

#=> Dunst
[ -d ~/.config/dunst ] || mkdir -p ~/.config/dunst
ln -sf $ABjo/wm/dunstrc ~/.config/dunst/dunstrc  # requires restarting X
# es ~/.config/dunst/dunstrc

#=> fix Calibri in Thunderbird
[ -d ~/.config/fontconfig/conf.d ] || mkdir -p ~/.config/fontconfig/conf.d
ln -sf $ABjo/wm/fontconfig-conf_d-20-no-embedded.conf ~/.config/fontconfig/conf.d/20-no-embedded.conf

#=> 2 for my m4p scripts
[ -d ~/texmf/tex/latex/m4p ] || mkdir -p mkdir -p ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $AjB/bashrc-wm

# #=> for Tex Live Arch packaged install
# sudo ln -sf $ABjo/texmf.cnf /usr/share/texmf.cnf  # has no effect...
# # e -la /usr/share/texmf.cnf

#=> gitconfig
ln -sf $machBld/jo/gitconfig ~/.gitconfig
# points to further convigurations on  $ITcore
# e -la ~/.gitconfig

#=> GitHub CLI 0 install
sudo pacman -S github-cli

#=> GitHub CLI 1 configure
gh config set -h github.com git_protocol ssh
gh extension install gennaro-tedesco/gh-s

#=> Openbox - shift+PrtSc disabled - notification
# for  i34G1TU02  &  sbMb
ln -sf $Openbox/shiftPrtSc.sh ~/.config/openbox/shiftPrtSc.sh

#=> LaTeX
lnd $LTXj ~/texmf/tex/latex/jo
# e -adl ~/texmf/tex/latex/jo

#=> mdfpdf Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml
e -adl ~/.pandoc/defaults/*

#=> mpv
ln -sf $misc/CP/mpv.conf ~/.config/mpv/mpv.conf

# e -la ~/.config/mpv

#==> minimal
# $misc/GRs/cGRs-needed.sh
[ -d ~/.config/mpv/scripts ] && rm -r ~/.config/mpv/scripts; ln -sf $ITccl/CP/mpv-scripts ~/.config/mpv/scripts

#==> mpv-uosc 0 install
ln -sf /usr/share/mpv/fonts ~/.config/mpv/fonts
[ -d ~/.config/mpv/scripts ] && rm -r ~/.config/mpv/scripts; ln -sf /usr/share/mpv/scripts ~/.config/mpv/scripts
ln -sf /usr/share/mpv/script-opts ~/.config/mpv/script-opts

#=> music_rotate
chmod 755 $ABjo/music/music_rotate.sh
sudo ln -sf $ABjo/music/music_rotate.sh /usr/local/bin/music_rotate
sudo ln -sf $ABjo/music/music_rotate.desktop /usr/share/applications/music_rotate.desktop
# pb /usr/share/applications/music_rotate.desktop

#=> Pandoc templates
lnd $onGH/pandoc-templates ~/.pandoc/templates
# e -adl ~/.pandoc/templates

#=> SSH config
ln -sf $cITCP/networking-SSHconfig/$host ~/.ssh/config
# e -la ~/.ssh/config
# pb ~/.ssh/config

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# e -la /usr/share/applications/spacemacs.desktop
chmod 755 $ABjo/Emacs/spacemacs.sh
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# pb /usr/local/bin/spacemacs

#=> Thunderbird safely
chmod 755 $ABjo/wm/TS/thunderbird_safely.sh
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# ll /usr/local/bin/thunderbird_safely
# pb /usr/local/bin/thunderbird_safely
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# pb /usr/share/applications/thunderbird_safely.desktop

#=> urxvt extensions
[ -d ~/.urxvt ] || mkdir ~/.urxvt
lnd $ABjo/wm/terminal/urxvt-Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

#=> WezTerm
ln -sf $OSAB/nodes-terminal/wezterm.lua ~/.wezterm.lua
# e -la ~/.wezterm.lua

