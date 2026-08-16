#!/bin/bash

# obviated by  paru --gendb, as necessary  followed by  paru

# bash $OSAB/bs-repeatable/remakeAURdevs.sh

# sudo aura -Aakux --devel  is good for identifying locally installed developer repositories

# set -v  # show code lines as they're used

PQ(){
    echo; echo $1; pacman -Qs $1
    chAPDs $1  # to check we're choosing the latest
} # chAPDs  exported from  $AjB/bashrc-console

updateMaybe()
{
    read -p "    - so is an update of $1 needed? " cnfrm
    if [ $cnfrm ] && [ $cnfrm = "y" ]; then
        echo $2
        case $2 in
            p) cd ~/.cache/paru/clone;;
            t) cd ~/.cache/traur/git;;
            k) echo 'k'; cd ~/.local/share/pikaur/aur_repos;;
            A) cd ~/Arch/AUR;;
            d) cd ~/Arch/AURdev-clone;;
        esac  # corresponding to  chAURpds
        cd $1; pwd
        nvim -c "silent! /$3" PKGBUILD
        read -p "    <Enter> if the PKGBUILD is good "
        makepkg -sic
        # makepkg -sic OPTIONS=-debug  causes  /usr/bin/makepkg: line 1180: OPTIONS: readonly variable
    fi
}
xdgo()
{
    if [ $host = "AsusW202" ]; then
        MESA_DEBUG=silent xdg-open $1
    else
        xdg-open $1
    fi
}

# #=> auracle-git 0 remake
# PQ auracle-git
# xdgo https://github.com/falconindy/auracle/commits/master/
# updateMaybe auracle-git k 'falconindy'

# #=> blesh-git
# PQ blesh-git
# xdgo https://github.com/akinomyoga/ble.sh/commits
# updateMaybe blesh-git k 'akinomyoga\/ble.sh'

# #=> chawan-git
# PQ chawan-git
# xdgo https://git.sr.ht/~bptato/chawan/log
# updateMaybe chawan-git k 'chawan-git'

# #=> clifm-git
# PQ clifm-git
# xdgo https://github.com/leo-arch/clifm/commits
# updateMaybe clifm-git k 'https:\/\/github.com\/leo-arch\/clifm'

#=> fontpreview-git
PQ fontpreview-git
xdgo https://github.com/sdushantha/fontpreview/commits/master/
updateMaybe fontpreview-git k 'https:\/\/github.com\/sdushantha\/fontpreview'

#=> intel-hybrid-codec-driver-git
PQ intel-hybrid-codec-driver-git
xdgo https://github.com/kcning/intel-hybrid-driver/commits/master/
updateMaybe intel-hybrid-codec-driver-git k 'https:\/\/github.com\/kcning\/intel-hybrid-codec-driver-git'

# #=> keepassxc-git
# PQ keepassxc-git
# xdgo https://github.com/keepassxreboot/keepassxc/commits
# updateMaybe keepassxc-git k 'keepassxreboot\/keepassxc'

# #=> lsix-git
# PQ lsix-git
# xdgo https://github.com/hackerb9/lsix/commits
# updateMaybe lsix-git k 'https:\/\/github.com\/hackerb9\/lsix'

# #=> rdrview-git
# PQ rdrview-git
# xdgo https://github.com/eafer/rdrview/commits
# updateMaybe rdrview-git k 'https:\/\/github.com\/eafer\/rdrview'

# #=> shell-color-scripts-git
# PQ shell-color-scripts-git
# xdgo https://gitlab.com/dwt1/shell-color-scripts/commits
# updateMaybe shell-color-scripts-git k 'https:\/\/gitlab.com\/dwt1\/shell-color-scripts'

# #=> snixembed-git
# # not installed on  i34G1TU02
# PQ snixembed-git
# xdgo https://git.sr.ht/~steef/snixembed/log
# updateMaybe snixembed-git k 'https:\/\/git.sr.ht\/\~steef\/snixembed'

# #=> tmux-bash-completion-git
# PQ tmux-bash-completion-git
# xdgo https://github.com/imomaliev/tmux-bash-completion/commits
# updateMaybe tmux-bash-completion-git k ''

#=> tmux-git
PQ tmux-git
xdgo https://github.com/tmux/tmux/commits/master/
updateMaybe tmux-git k 'tmux\/tmux'

#=> tty-clock-git
PQ tty-clock-git
xdgo https://github.com/xorg62/tty-clock/commits/master/
updateMaybe tty-clock-git k 'xorg62\/tty-clock'

#=> vimpc-git
PQ vimpc-git
xdgo https://github.com/boysetsfrog/vimpc/commits
updateMaybe vimpc-git k 'https:\/\/github.com\/boysetsfrog\/vimpc'

#=> wezterm-git
PQ wezterm-git
xdgo https://github.com/wezterm/wezterm/commits/main/
updateMaybe wezterm-git k 'https:\/\/github.com\/wezterm\/wezterm'

# #=> yj-git
# PQ yj-git
# xdgo https://github.com/sclevine/yj/commits
# updateMaybe yj-git k 'https:\/\/github.com\/sclevine\/yj.git'
# exit

