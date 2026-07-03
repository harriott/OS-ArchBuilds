#!/bin/bash

# sudo bash $OSAB/bs-1-into_jo/1-as_root.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quits on error, prints each statement here, including comments

#=> 0 check $OSAB
read -p "\$OSAB is $OSAB - looks good?"

#=> 1 softwares
pacman -S bash-completion
pacman -S jdk-openjdk  # for  languagetool
pacman -S ttf-nerd-fonts-symbols  # for Yazi

#=> 2 99-sysctl.conf
# show that  /etc/sysctl.d  is empty
ls /etc/sysctl.d
true

#==> 0 enable the SysRq keys
echo kernel.sysrq=1 > /etc/sysctl.d/99-sysctl.conf

#==> 0 swappiness to 10
# check the default
sysctl vm.swappiness
# fix lower value, which will become effective after reboot
echo "vm.swappiness=00" >> /etc/sysctl.d/99-sysctl.conf

#==> 3 check settings
cat /etc/sysctl.d/99-sysctl.conf

#=> 2 automake
pacman -S automake

#=> 2 file manage
pacman -S broot
pacman -S chafa  # Chafa
pacman -S dvd+rw-tools
pacman -S enca
pacman -S fd
# pacman -S felix-rs  # felix
pacman -S fuseiso  # FuseISO
pacman -S fzf
pacman -S awesome-terminal-fonts lsd
pacman -S plocate; updatedb
pacman -S ncdu
pacman -S nnn
pacman -S ouch
pacman -S perl-rename
pacman -S p7zip
pacman -S ranger
pacman -S rhash
pacman -S ripgrep
pacman -S rsync
pacman -S bat
pacman -S skim
pacman -S trash-cli
pacman -S tree
pacman -S vifm
pacman -S yazi  # Yazi
pacman -S zoxide

#=> 2 hw
pacman -S linux-firmware-intel
pacman -S usbutils

#==> 2 hd 0
pacman -S atop
pacman -S diskus
pacman -S duf
pacman -S gptfdisk
pacman -S hdparm
pacman -S ioping
pacman -S ntfs-3g  # NTFS-3G
pacman -S smartmontools
pacman -S udiskie

#==> 2 hd 1 SSDs
pacman -S dua-cli  # dua  for SSDs
pacman -S gdu

# weekly TRIM (util-linux)
systemctl enable fstrim.timer --now
# systemctl status fstrim.timer

#=> 2 info
pacman -S bashtop  # Bashtop, superseded by AUR bpytop
pacman -S dateutils  # Dateutils
pacman -S fastfetch  # Fastfetch
    f=~/.config/fastfetch; [ -d $f ] || mkdir $f
pacman -S htop
pacman -S iotop
pacman -S lshw
pacman -S lsof
pacman -S man-db
pacman -S man-pages
pacman -S progress
pacman -S sysstat
pacman -S tldr; tldr -u

#=> 2 systemd Journal size
grep SystemMaxUse /etc/systemd/journald.conf

# #==> 0 limit
# # helpful for storage-limited installations
# sed -i 's/^#SystemMaxUse=/SystemMaxUse=300/' /etc/systemd/journald.conf

# #==> 1 unlimit
# sed -i 's/^SystemMaxUse=300/#SystemMaxUse=/' /etc/systemd/journald.conf

#=> 2 networking
pacman -S arp-scan
pacman -S openbsd-netcat  # netcat - for network connection tests
pacman -S networkmanager  # NetworkManager
pacman -S tcpdump  # for packet analysis
pacman -S wget  # Wget
pacman -S whois
pacman -S isync  # for mbsync

#=> 2 Pacman
sudo sed -i 's/#Color/Color/' /etc/pacman.conf  # colorized Pacman
pacman -S expac
pacman -S pacman-contrib  # for paccache
pacman -S pacutils
pacman -S pkgfile  # for finding possible packages
    pkgfile -u
    systemctl enable pkgfile-update.timer --now
pacman -S pkgstats

#=> 2 encoding
# pacman -S bash-language-server
pacman -S dart
pacman -S git-delta
pacman -S gvim
pacman -S lazygit
pacman -S lua-language-server
pacman -S luarocks
pacman -S onefetch
pacman -S python-pip
pacman -S python-pipx
    # pipx ensurepath  # maybe not needed
pacman -S r  # R
pacman -S ruby ruby-docs
    pacman -S rbenv ruby-build
pacman -S selene  # Lua linter

#=> 2 fonts
sudo pacman -S adobe-source-code-pro-fonts  # for  Source Code Pro
sudo pacman -S gnu-free-fonts
sudo pacman -S noto-fonts  # for  Firefox  text and  Xfce  window labels
sudo pacman -S noto-fonts-cjk  # for  $MD4PDF/GNULinux/md4pdf.sh
sudo pacman -S ttf-arimo-nerd
sudo pacman -S ttf-cascadia-mono-nerd
sudo pacman -S ttf-croscore
sudo pacman -S ttf-dejavu
sudo pacman -S ttf-hack
sudo pacman -S ttf-hack-nerd
sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S ttf-meslo-nerd
sudo pacman -S ttf-opensans
sudo pacman -S ttf-ubuntu-mono-nerd

#=> 2 graphics
# pacman -S mesa-demos  # Mesa demos
pacman -S libva-utils

#=> 2 system
pacman -S beep
pacman -S bpytop  # BpyTOP - supersedes  Bashtop
pacman -S bottom
pacman -S btop
pacman -S dool
pacman -S fcron; systemctl enable fcron.service
pacman -S glances
pacman -S time  # GNU time
pacman -S isd  # GNU isd
pacman -S meson  # for  auracle-git  later
pacman -S pv  # Pipe Viewer

#=> 2 various
pacman -S arch-wiki-docs lynx w3m  # web-ish
pacman -S cpanminus
pacman -S ctags  # universal-ctags
pacman -S emacs  # brings in  tree-sitter
# pacman -S gnome-terminal  # GNOME Terminal
pacman -S hyperfine
pacman -S kew
pacman -S languagetool  # for the GUI
pacman -S npm  # Node Package Manager, brings in  nodejs
pacman -S mythes-en  # OpenOffice English thesaurus
pacman -S pass  # brings in gnupg, which brings in pinentry
    gpg -k  # creates & populates  ~/.gnupg
pacman -S python-beautifulsoup4  # for thesaurus_query.vim
pacman -S rkhunter  # Rootkit Hunter
pacman -S speech-dispatcher  # Speech Dispatcher
pacman -S strace  # for debugging
pacman -S tmux

#=> 2 users
# activate wheel group
sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
grep wheel /etc/sudoers
# check that  /etc/sudoers  parses OK
visudo -c -f /etc/sudoers

# having decided whether or not to mount  /home separately,
#  user jo, creating the home directory and adding to group wheel
useradd -m -G wheel jo
until passwd jo; do echo "try again"; done
cat /etc/passwd

pacman -S opendoas
    cp $OSAB/nodes-etc/doas.conf /etc/doas.conf  # sudo prettybat /etc/doas.conf
    chmod -c 0400 /etc/doas.conf  # s /etc/doas.conf

