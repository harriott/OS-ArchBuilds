
# https://harriott.github.io/ - Wed 17 Jun 2026

# bash $OSAB/nodes-set/jo-3-when_myDrA.sh

set -v  # prints each statement here, including comments

shopt -s expand_aliases; alias es='eza -al'  # show permissions, rough sizes, and symlinks

ln -sf $ABjo/wm/pqivrc ~/.config/pqivrc
lnd () { [ -d $2 ] && rm -r $2; ln -sf $1 $2; } # symlink a directory

#=> $notDr
[ -d $notDr/GR-NF ] || mkdir -p $notDr/GR-NF
ln -sf $ITcore/notDr/readme.md $notDr/readme.md; es $notDr/readme.md
ln -sf $ITcore/notDr/NF.md $notDr/GR-NF/readme.md; es $notDr/GR-NF/readme.md

#=> audio
m="$HOME/.config/mpd"; [ -d $m ] || mkdir $m; ln -sf $ABjo/music/MPD/mpd.conf $m/mpd.conf
v="$HOME/.config/vimpc"; [ -d $v ] || mkdir $v; ln -sf $ABjo/music/MPD/vimpcrc $v/vimpcrc

#==> cmus
ln -sf $ABjo/wm/cmusqueue.sh   ~/Arch/cmusqueue.sh
ln -sf $culLA/jo/cmushnotify.sh ~/.local/share/cmushnotify.sh
c="$HOME/.config/cmus"; [ -d $c ] || mkdir -p $c; ln -sf $ABjo/wm/cmus-rc.conf $c/rc
es ~/.config/cmus/rc

#==> music_rotate
chmod 755 $ABjo/music/music_rotate.sh
sudo ln -sf $ABjo/music/music_rotate.sh /usr/local/bin/music_rotate
sudo ln -sf $ABjo/music/music_rotate.desktop /usr/share/applications/music_rotate.desktop
es /usr/share/applications/music_rotate.desktop

#=> desktop
ln -sf $ABjo/configGtk30Settings.ini ~/.config/gtk-3.0/settings.ini

#==> Dunst
d="$HOME/.config/dunst"; [ -d $d ] || mkdir -p $d; ln -sf $ABjo/wm/dunstrc $d/dunstrc  # requires restarting X
es ~/.config/dunst/dunstrc

# #==> Openbox - shift+PrtSc disabled - notification
# # for  i34G1TU02  &  sbMb
# ln -sf $Openbox/shiftPrtSc.sh ~/.config/openbox/shiftPrtSc.sh

#==> setxkbmap toggle
chmod 755 $ABjo/wm/sxk/sxk.sh
sudo ln -sf $ABjo/wm/sxk/sxk.desktop /usr/share/applications/sxk.desktop
es /usr/share/applications/sxk.desktop
sudo ln -sf $ABjo/wm/sxk/sxk.sh /usr/local/bin/sxk
es /usr/local/bin/sxk

#=> documenting
ln -sf $ABjo/wm/zathurarc ~/.config/zathura/zathurarc

#==> LaTeX
lnd $LTXj ~/texmf/tex/latex/jo
e -adl ~/texmf/tex/latex/jo

#==> mdfpdf Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml
e -adl ~/.pandoc/defaults/*

# #==> for Tex Live Arch packaged install
# sudo ln -sf $ABjo/texmf.cnf /usr/share/texmf.cnf  # has no effect...
# # es /usr/share/texmf.cnf

#=> gitconfig
ln -sf $ABnm/jo/gitconfig ~/.gitconfig
es ~/.gitconfig

#=> mpv
ln -sf $misc/CP/mpv.conf ~/.config/mpv/mpv.conf
es ~/.config/mpv/*

#==> minimal
# $misc/GRs/cGRs-needed.sh
s="$HOME/.config/mpv/scripts"; [ -d $s ] && rm -r $s; ln -sf $ITccl/CP/mpv-scripts $s

#=> Pandoc - for my m4p scripts
m="$HOME/texmf/tex/latex/m4p"; [ -d $m ] || mkdir -p $m  # needed eventually for Pandoc in $AjB/bashrc-wm

#=> Pandoc templates
lnd $onGH/pandoc-templates ~/.pandoc/templates
# e -adl ~/.pandoc/templates

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
es /usr/share/applications/spacemacs.desktop
chmod 755 $ABjo/Emacs/spacemacs.sh
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
es /usr/local/bin/spacemacs

#=> terminal
k="$HOME/.config/kitty"; [ -d $k ] || mkdir $k; ln -sf $OSAB/nodes/jo/term/kitty.conf $k/kitty.conf

#==> Alacritty
if [ $host = 'DOP3040D11S' ]; then
  ln -sf $ABnm/jo/term/alacritty.toml ~/.alacritty.toml
elif [[ $host =~ HPEB840G3 ]]; then
  ln -sf $ABno/m-HPEB840G3x/hi-jo/term/alacritty.toml ~/.alacritty.toml
else  # - sbMb
  ln -sf $ABnm/jo/term/Alacritty/Xfce.toml ~/.alacritty.toml
fi
ln -sf $ABjo/term/alacritty-all.toml ~/.alacritty-all.toml
es ~/.alacritty*

#==> urxvt extensions
u="$HOME/.urxvt"; [ -d $u ] || mkdir $u; lnd $ABjo/wm/terminal/urxvt-Perls $u/ext
es ~/.urxvt

#==> WezTerm
ln -sf $ABjo/term/wezterm.lua ~/.wezterm.lua
es ~/.wezterm.lua

#=> WAN - CLM
cp -f $lclm/mbsyncrc-backup ~/.mbsyncrc
cp -f $lclm/msmtprc-backup ~/.msmtprc; chmod 600 ~/.msmtprc
cp -f $lclm/notmuch-config-backup ~/.notmuch-config
maild=~/.local/share/mail
for m in $maild $maild/fm $maild/gmx $maild/zou; do [ -d $m ] || mkdir $m; done

#=> WAN - fix Calibri in Thunderbird
c="$HOME/.config/fontconfig/conf.d"; [ -d $c ] || mkdir -p $c
    ln -sf $ABjo/wm/fontconfig-conf_d-20-no-embedded.conf $c/20-no-embedded.conf

#=> WAN - GitHub CLI - configure
gh config set -h github.com git_protocol ssh
echo "Getting gh extensions:"
gh extension install gennaro-tedesco/gh-s
echo "- got them"

#=> WAN - SSH config
ln -sf $cITCP/networking-SSH/config/$host ~/.ssh/config
es ~/.ssh/config

#=> WAN - Thunderbird safely
chmod 755 $ABjo/wm/TS/thunderbird_safely.sh
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
es /usr/local/bin/thunderbird_safely
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
es /usr/share/applications/thunderbird_safely.desktop

