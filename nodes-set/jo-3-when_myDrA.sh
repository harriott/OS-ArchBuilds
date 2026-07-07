
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
mr="$ABjo/music/music_rotate.sh"; chmod 755 $mr; sudo ln -sf $mr /usr/local/bin/music_rotate
mrd="/usr/share/applications/music_rotate.desktop"; sudo ln -sf $ABjo/music/music_rotate.desktop $mrd; es $mrd

#=> desktop
ln -sf $ABjo/configGtk30Settings.ini ~/.config/gtk-3.0/settings.ini

#==> Dunst
d="$HOME/.config/dunst"; [ -d $d ] || mkdir -p $d; ln -sf $ABjo/wm/dunstrc $d/dunstrc  # requires restarting X
es ~/.config/dunst/dunstrc

#==> setxkbmap toggle
ss="$ABjo/wm/sxk/sxk.sh"; chmod 755 $ss; bs="/usr/local/bin/sxk"; sudo ln -sf $ss $bs
as="/usr/share/applications/sxk.desktop"; sudo ln -sf $ABjo/wm/sxk/sxk.desktop $as; es $as

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
ss="$ABjo/Emacs/spacemacs.sh"; chmod 755 $ss; bs="/usr/local/bin/spacemacs"; sudo ln -sf $ss $bs; es $bs
sd="/usr/share/applications/spacemacs.desktop"; sudo ln -sf $ABjo/Emacs/spacemacs.desktop $sd; es $sd

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

#==> Alacritty with Neovim
if [[ $host == DOP3040D11S ]]; then
    ANs="$ABnm/jo/term/AlNvim.sh"
    ANd="$ABnm/jo/term/AlNvim.desktop"
elif [[ $host =~ HPEB840G3 ]]; then
    ANs="$ABno/m-HPEB840G3x/hi-jo/term/AlNvim.sh"
    ANd="$ABno/m-HPEB840G3x/hi-jo/term/AlNvim.desktop"
else
    ANs="$ABnm/jo/term/Alacritty/AlNvim.sh"
    ANd="$ABnm/jo/term/Alacritty/AlNvim.desktop"
fi
chmod 755 $ANs; sudo ln -sf $ANs /usr/local/bin/AlNvim; es $ANs
uANd="/usr/share/applications/AlNvim.desktop"; sudo ln -sf $ANd $uANd; es $uANd

#==> urxvt extensions
u="$HOME/.urxvt"; [ -d $u ] || mkdir $u; lnd $ABjo/wm/term/urxvt-Perls $u/ext
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
tss="$ABjo/wm/TS/thunderbird_safely.sh"; chmod 755 $tss; ts="/usr/local/bin/thunderbird_safely"; sudo ln -sf $tss $ts; es $ts
tsd="/usr/share/applications/thunderbird_safely.desktop"; sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop $tsd; es $tsd

