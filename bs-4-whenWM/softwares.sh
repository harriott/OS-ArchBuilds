#!/bin/bash

# softwares that require a WM

# bash $OSAB/bs-4-whenWM/1-softwares.sh

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -ev  # quits on error, prints each statement here, including comments
shopt -s expand_aliases; alias pikn='pikaur -S --needed'
# prs  defined in  $AjB/bashrc-console

read -p 'Have you run  pikaur -Syu  ?'

#=> audio
pikn blanket  # Blanket
pikn mousai  # similar to Shazam
pikn mpdris2  # for MPD
pikn quodlibet  # Quod Libet
pikn ymuse  # for MPD, takes ages to compile

#==> mpv
pikn mpv
[ -d ~/.config/mpv/scripts ] || mkdir -p ~/.config/mpv/scripts

#=> AV
pikn obs-studio  # OBS Studio
pikn libopenshot libopenshot-audio libopenshot-audio-docs openshot  # OpenShot
pikn playerctl  # $OSL/QR
pikn vlc vlc-gui-ncurses vlc-plugin-ffmpeg

#=> coding
pikn gopls  # Go language server
pikn tree-sitter-cli
pikn yamllint
pikn yj-git  # convert between HCL, JSON, TOML, YAML

#==> Perl module File::Slurp
pikn perl-file-slurp  # $misc/CP/workHours/makeDats.pl

#==> Perl module JSON
pikn perl-json  # $misc/CP/PerlTools/FM-json-md.pl

#==> Perl module Regexp::Common
pikn perl-regexp-common  # $cITCP/encoding/dpl/Perl/numbers_or_not.pl

#==> Perl modules JSON::Parse, JSON::Tokenize, JSON::Whitespace
pikn perl-json-parse  # $misc/CP/PerlTools/FM-json-md.pl

#=> de - fcitx5-configtool
# for  Input Method  tray icon
pikn fcitx5-configtool
read -p '- now Alt+F3 > Fcitx 5 Configuration > Addon > Clipboard  off'

#=> de - NetworkManager - network-manager-applet
pikn network-manager-applet  # tray icon

#=> documenting
pikn odt2txt

#==> LibreOffice Fresh install
pikn libreoffice-fresh-en-gb
libreoffice &
read -p '- first-run of LibreOffice - close it'

#==> markdown
pikn apostrophe  # Apostrophe markdown editor
pikn glow
pikn marktext-bin  # MarkText

#==> PDF
cargo install --git https://github.com/itsjunetime/tdf.git  # takes ages

#===> qpdfview
gpg --recv-keys 1F521FF0F87E9E1CDE46B8A9F4928C4DD24D4DF8  # Adam Reichold's public key
    pikn qpdfview

#===> Zathura 0 tessdata
pikn tesseract-data-eng

#===> Zathura 1 zathura-pdf-mupdf
pikn zathura-pdf-mupdf
[ -d ~/.config/zathura ] || mkdir ~/.config/zathura
# zathurarc  symlinked in  $OSAB/nodes-set/jo-3-whenWM.sh

#==> TeX Live - perl-tk
pikn perl-tk  # needed for  tlmgr -gui

#=> file manage
pikn fsearch
pikn github-cli  # GitHub CLI
pikn mcat-bin
pikn peazip
pikn vimiv  # Vimiv

#==> PCManFM
pikn pcmanfm
pcmanfm &
# Edit > Preferences >
#  General > Confirm before moving files into "trash can"   off-ticked
#  Volume Management > Show available options  off-ticked
#  Advanced > Terminal > urxvt
read -p ' - settings done?'

#=> fonts
pikn font-manager
pikn xorg-xfd

#=> hw
pikn asunder  # graphical Audio CD ripper, takes ages
pikn cameractrls
pikn gnome-disk-utility  # (for Menu > Accessories > Disks)
pikn guvcview  # (GTK+ UVC Viewer) webcam application (V4L2 camera devices)
pikn hplip
pikn iscan  # epkowa SANE backend
pikn localsend  # takes ages
pikn cpu-x
pikn sane  # SANE

#==> acpilight - configure
sudo gpasswd -a jo video  # groups jo
sudo cp $OSAB/mb-HPEB840G3x/etc-backlight.rules /etc/udev/rules.d/backlight.rules
#  pb /etc/udev/rules.d/backlight.rules
# after a reboot can  xbacklight -inc 12

#==> gPhoto (digital cameras)
pikn gphoto2  # brings in  libgphoto2
pikn gvfs-gphoto2  # for GNOME Files integration

#==> hplip-plugin 0 HPLIP key
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 82FFA7C6AA7411D934BDE173AC69536A2CF3A243
# - see  ~/Arch/AUR/hplip-plugin/PKGBUILD

#==> hplip-plugin 1 install
pikn hplip-plugin

#=> imagey
pikn feh
pikn ffmpegthumbnailer  # for  /usr/share/clifm/plugins/vid_viewer.sh
pikn gifski  # (for making animated GIFs)
pikn gnuplot
pikn gpicview  # GPicView
pikn graphicsmagick  # GraphicsMagick
pikn img2pdf
pikn librecad  # LibreCAD
pikn mermaid-cli  # flowcharts
pikn mypaint
pikn nsxiv
pikn peek  # (GIF Screen Recorder)
pikn pqiv
pikn resvg  # for SVG's in Yazi in WezTerm
pikn sxiv
pikn xnviewmp  # XnViewMP

#==> nomacs
pikn nomacs
nomacs &
read -p 'Ctr+Shift+p > English > Close  then  Close on ESC'

#==> qrtool
# (rustup update)
pikn qrtool  # for QR code

#=> Java
pikn java-commons-lang  # (for pdftk's functions)
pikn java-environment-common  # for  JDK
pikn java-runtime-common  # supposedly for  JRE, but anyway provides  /usr/bin/java
pikn pdftk

#=> serve
pikn hugo  # Hugo

#==> php
pikn php
sudo sed -i 's#^;date.timezone =#date.timezone = Europe/Paris#' /etc/php/php.ini

#==> php-fpm
pikn php-fpm
sudo systemctl enable php-fpm.service --now
sudo usermod -aG http jo

#=> softwares
pikn flatpak
pikn gucharmap
pikn handlr-regex
pikn pacfinder
pikn pscircle
pikn qalculate-gtk
pikn sqlitebrowser

#==> enable multilib
sudo sed -i 's/#\[multilib]/[multilib]/' /etc/pacman.conf
sudo sed -i '/^\[m/{n;s/#I/I/}' /etc/pacman.conf

#=> terminal
pikn wezterm  # WezTerm

# #==> rxvt-unicode
# pikn urxvt-perls  # provides keyboard-select and brings in  rxvt-unicode
# # prs urxvt-perls rxvt-unicode  # in that order

#==> rxvt-unicode-truecolor-wide-glyphs
pikn rxvt-unicode-truecolor-wide-glyphs

#=> text wrangling
pikn featherpad  # FeatherPad

#==> Vim 0
pikn neovide python-flake8 python-pynvim

#==> Vim 1 ShellCheck
# (after  pandoc, for bash linting in xVim)
pikn shellcheck  # brings in Haskell

#=> WAN
pikn falkon firefox
pikn fastmail
pikn rclone  # Rclone
pikn signal-desktop  # Signal
pikn google-chrome  # Google Chrome
pikn zoom

#==> Dropbox 0 install
# (once  Dropbox public key)
pikn dropbox thunar-dropbox

#==> Dropbox 1 prevent automatic updates
# allowing Arch installation to work
install -dm0 ~/.dropbox-dist  # s ~/.dropbox-dist

#==> NetworkManager dispatcher
sudo systemctl enable NetworkManager-dispatcher --now
sudo cp $OSAB/nodes-etc/NMdispatcher-ntpd.sh /etc/NetworkManager/dispatcher.d/ntpd.sh
sudo chmod 755 /etc/NetworkManager/dispatcher.d/ntpd.sh
# vifm /etc/NetworkManager/dispatcher.d /usr/lib/NetworkManager/dispatcher.d

#==> Thunderbird 0 install
pikn thunderbird-i18n-en-gb
thunderbird &
read -p '- first-run of  Thunderbird  to generate a dummy  Profile, not to be hereafter used'

# #==> Thunderbird 1 remove
# prs thunderbird thunderbird-i18n-en-gb

