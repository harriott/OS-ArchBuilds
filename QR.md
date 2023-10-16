vim: nospell:

    $OSAB; m4ps 0 1

    m4p $OSAB/QR.md 1
    r $misc/linux/QR  # for my more general linux QuickReference

my Arch QuickReference

```bash
bm  # (in a wide enough terminal) fuzzy search for manuals
i bc
i datediff
r $TeNo/TN
spd-say hi
tty-clock -bcs
~/.config/pnmixer/config
```

SORT(1)

# Bash
    $Bash/bash_profile
    $core/IT_stack/unix_like-linux/Bash/colours
    /etc/profile

```bash
im time
pinfo bash
pinfo -m bash
tput bel  # bell
```

- BASH(1)
- UNIQ(1)

## file manage
    im ls

### broot
    i broot

#### commands
    alt+enter => quit to current directory
    alt+h => toggle hidden
    ctrl+q [<enter>] => quit
    F5 => refresh

#### launch
    br
    br -c :count
    br -d => br --dates => the last modified date
    br -g => br --show-git-info
    br -h => br --hidden
    br -i => br --show-gitignored
    br -p => br --permissions
    br -s => br --sizes

### directory structures
    <directory>  # cd <directory>  ( shopt autocd )
    file ~/.vim  # shows symlink source
    namei ~/.vim  # shows tree, including symlink sources

#### Samokovarov's jump
    i jump
    j <fuzzysearch> [<FuzzyLook> ...]  then j for subsequent matches
    jump clean  # I have in fcrontab
    jump top | mo
    jump --help

### file searching
    find . -iregex '.*\.\(avi\|flv\|mkv\|mov\|mp4\|ogv\)$' > avfiles.txt
    find . -type d -name .git
    find . -type f -name .gitignore
    find . -type f -name "*.pl"
    find . -type f -name "python.vim"

as root: `find / -xdev -iname "*fmtutil.cnf*"`

#### for configuration files
    fd -I -e conf
    find . -type f -name "*.conf"

#### grepping
    grep -E '<someText>|<otherText>'
    grep -r --include "*.sh" ' -f ' .
    grep -ri --exclude-dir *Copied* --include "*.tex" chapterstyle .
    grep -ri --include "*.conf" '#=> ' .
    man grep | grep egrep | xcol egrep fgrep

##### manual
- GNU Grep Manual
- GREP(1)

#### mlocate
    i locate
    im locate

##### regex searches
    locate -r '\.conf$'
    locate -r '\.json$' | mo
    locate -i 'nick cave'

##### updatedb
    /etc/updatedb.conf
    doas updatedb
    systemctl status updatedb.timer

#### list symlinks
    find . -mindepth 1 -maxdepth 1 -type l -ls  # only in this directory

##### recursively
    find . -type l -ls
    find ~ -path '*/.virtualenvs' -prune -o -type l -ls

### fzf
    <someCommand> Ctrl-t - gets the selected node on the command-line
    FZF_DEFAULT_COMMAND

```bash
Alt+c  # to change directory
bm fzf
cat $(fzf)
cd [directory/][fuzzy_pattern]**<tab>
f  # defined in  $OSAB/Bash/bashrc-generic
gvim -o `f`  # calling upon fzf
kill -9 <tab>
ls -l $(fzf -m)
unalias **<tab>
```

### fzy
find . -type f | fzy  # selecta
i fzy

## pager - less
    less <file>

### commands
    h -> help
    j,k -> down/up

## pager - moar
```bash
mo <file>  # ? lists the limited moar commands
moar -h
```

# BBCode
    $vimfiles/ftplugin/bbcode.vim
    [quote]quote[/quote]

# documenting
    i pdfinfo
    r $Sig

## dict
    $Bash/bashrc-console
    dict -D
    i dict

## TeX
    r $GHrUse/CP/MartinThoma-LaTeX-examples
    r $jtCP/TeX/LaTeX  # my MWEs
    x <LaTeX_file_basename>

`mmsc`, `pif`, `xc` defined in `$Bash/bashrc-ob`

### fontspec
    \setmonofont{Caskaydia Cove Regular Nerd Font Complete Mono}
    \setmonofont{Ubuntu Mono}

### Arch package files
    C /usr/share/texmf-dist/tex/latex/
    /usr/share/texmf-dist/tex/latex/memoir/memoir.cls

### copied resources
    r $cITh/CP/TeX
    z $cITh/CP/TeX/LaTeX/appearance/datetime2.pdf
    z $cITh/CP/TeX/LaTeX/appearance/drawing/PGF-TikZ/pgfmanual.pdf
    z $cITh/CP/TeX/LaTeX/appearance/font/psnfss2e.pdf  # includes package pifont
    z $cITh/CP/TeX/LaTeX/appearance/font/XeLaTeX/fontspec.pdf
    z $cITh/CP/TeX/LaTeX/appearance/ragged2e.pdf
    z $cITh/CP/TeX/LaTeX/appearance/symbols/symbols-a4.pdf
    z $cITh/CP/TeX/LaTeX/structure/classes/memoir/memman.pdf
    z $cITh/CP/TeX/LaTeX/structure/parts/hyperref/hyperref-doc.pdf
    z $cITh/CP/TeX/LaTeX/structure/parts/Lists/easylist-doc.pdf
    z $cITh/CP/TeX/LaTeX/structure/parts/titling/contrib-titlesec/titlesec.pdf

### my packages
    r $LTXj
    r $JHt/IT/CP/TeX/LaTeX
    r ~/texmf

### native install
    /usr/local/texlive/2023/texmf-dist/tex/latex/base/nfssfont.tex
    z /usr/local/texlive/2023/texmf-dist/doc/latex/memoir/memman.pdf

## TeX Live
    pacman -Qs texlive > $machLg/TeXLive/Arch_packages-$(date '+%Y%m%d%H%M').txt

### native install
    /usr/local/texlive/2023/texmf-dist/doc/
    gdu -nps /usr/local/texlive

#### tcolorbox
    $/usr/local/texlive/2023/texmf-dist/doc/latex/tcolorbox/README.md
    /usr/local/texlive/2023/texmf-dist/doc/latex/tcolorbox/tcolorbox-example-poster.tex

### TeX Live package manager
    /usr/local/texlive/2023/texmf-var/web2c/tlmgr.log
    /usr/local/texlive/2023/texmf-var/web2c/tlmgr-commands.log
    tlmgr list --only-installed > $machLg/TeXLive/tlmgr_list-$(date '+%Y%m%d%H%M').txt
    sudo tlmgr update --all

# Emacs
    $misc/Emacs/init.el
    $TeNo/Emacs/org/org.org
    et <fileToOpenTerminal>
    im emacs
    ~/.emacs.d/.cache

`G` & `T` defined in `$Bash/bashrc-console`

## resources
    fd -e org -p $GHrUse
    r $GHrUse/CP/emacs/syl20bnr-spacemacs-develop  # local fresh clone
    r $cITh/CP/encoding/textWrangling/Emacs  # PDF guides

### Worg
    $GHrUse/emacs/_bzg-worg/orgcard.org
    r $GHrUse/emacs/_bzg-worg

## Spacemacs
    $ulL/Emacs/sm/.spacemacs
    n ~/.sm/.emacs.d
    nvim -O ~/.sm/.spacemacs ~/.sm/.emacs.d/core/templates/.spacemacs.template -c 'windo difft'

# encoding
    $onGH/pandoc-templates/README.markdown
    b <codeFile>  # syntax'd cat
    pb <codeFile>  # also reformatted
    yj -ty <file.toml >file.yml
    z $cITh/CP/encoding/cheatsheet-a5.pdf &  # emmet

## ffprobe
    ffprobe -h | mo
    i ffprobe

## npm
    $HOME/.npmrc
    r ~/.npm-global
    wikit mooji -b

### mapscii
    mapscii

#### control
- `a`/`z` = zoom in/out
- arrows scroll around
- mouse

## Python
    ~/.local/bin/
    ~/.local/pipx/venvs/
    i python

## Ruby
```bash
gem list --no-versions | tr '\n' ' ' | xcol bundler github-pages jekyll liquid
gem list > $ulLA/$host/gems.gems
r $GEM_HOME
```

see `$vimfiles/syntax/gems.vim`

## Rust
    cargo version
    rustup update

### didyoumean
    dym better
    i dym

# fcron
    systemctl status fcron.service  # showing recent events

## fcrontab
    VISUAL= fcrontab -e  # then make your changes

### spool directory
    /var/spool/fcron

#### check the crontabs therein
    systab.orig  # contains bootrun tabs to catch
    sudo cat /var/spool/fcron/jo.orig

# file contents
    pygmentize -h

## awk
    $cIThul/awk

- `-F fs`, (`--field-separator fs`) redefines `FS`
- GAWK(1)

## ripgrep
    batgrep
    i rg
    rg --type-list
    rg <searchText> -l | xargs sed -i 's/<searchText>/<replaceText>/g'

outer whitespaces get ignored

### searches
    i rg
    rg '<someText>|<otherText>'  # searches recursively in files
    rg '\.emacs\.d'
    rg --no-ignore 'sometext'  # allows searching into gitignored places
    rg -i <case-insensitive>
    rg -tmd '[\p{Devanagari}]'  # finds Devanagari characters
    rg -tmd '\$Sig'
    rg -tmd '\{TNW}'
    rg -uu <someText>  # ignores ignore files, and searches in hidden stuff
    rg <someText> **/*.ext

in JH, `$DJH/search/searches.md`

## sed
    $cIThul/sed
    i sed
    tldr sed

SED(1)

### tealdeer
    tldr -h
    tldr -u  # --update
    tldr tldr

# file manage
    diskus  # size of current directory
    fd . $OSAB | entr notify-send 'a file in $OSAB was modified'
    i tree
    n [directory]
    rm -r $Storage/.Trash-1000
    rm -r /mnt/ST4000VN008/.Trash-1000

- MV(1)
- rsync(1)

## advcpmv
    cpg --help | mo  # man advcp
    mvg --help | mo  # man advmv

## CliFM
    C [dir1 [dir2 ...]]
    C $misc
    clifm --open www.archlinux.org  # alternative to  xdg-open
    clifm -h
    clifm -v
    i clifm

### configurations
    $ABjo/CliFM/keybindings.clifm
    kbgen
    r ~/.config/clifm
    ~/.config/clifm/profiles/default/history.clifm
    ~/.config/clifm/.last => workspaces

### commands
    /<glob> -x => recursive search
    ? => basic usage examples
    actions
    alt-. => toggle hidden
    alt-e => $HOME
    alt-h => directory history
    alt-m => mount points
    alt-r => /
    alt-u => up
    bm [a/d] => bookmark [add/delete]
    da => disk_analyzer.sh
    dr => dragondrop.sh
    i => image thumbnails
    ptot <pdf.pdf> => pdftotext
    shift+up => navigate up
    stats
    ws[2] => workspaces

#### configure
    edit / F10 => ~/.config/clifm/profiles/default/clifmrc
    MaxFilenameLen

#### directory/file operations
```
- => fuzzy preview files
// <regex> => fzf rg
d3 => duplicate ELN 3
m 5 3 => move ELN 5 into ELN 3
md <newDirectory>
n <newFile>/<newDirectory/>
t => list trash
u => fails to undelete trash, quit and  tre
vid => ffmpegthumbnailer
```

#### directory navigation
    ++ => fuzzy directory jumper
    b/f => back/forward in directories
    j [fuzzyPath] => jump [to fuzzyPath]

#### help
    F1 => manpage
    F2 => manpage > COMMANDS
    F3 => manpage > KEYBOARD SHORTCUTS
    ih => fzf help (esc to quit)

#### ELN's properties
    alt-l => toggles detail view
    p 1 3 => properties of those ELNs

#### quit
    F12
    Q => to current directory

#### refresh screen
    ctrl-r
    rf

#### selection
    c sel => copy selection
    ds 2 4 => deselect those ELNs
    r sel => remove all
    s 2 4 6-9 => select those ELNs
    sb => selection box
    t sel => trash selection

## eza
    e
    e -l -s modified  # time sorted
    e -RL 2  # depth of 2
    e -adl <directory_to_check>  # reports for the directory (not its contents)
    i eza
    more in  $OSAB/Bash/bashrc-generic

## fd
    fd --max-depth 2 -Hl -t l | xcol <keywords>  # handy for spotting snags
    fd -e ods  # finds OpenOffice Calc spreadsheets
    fd -H  # --hidden
    fd -tf -e css
    fd -tf -e fetl
    fd -tf -e ogg ' webm'
    fd -tf -e md | wc -l
    fd -tf -e md -e tex
    fd -tf -e tex
    fd -tf -e vim
    fd -u '\..+'
    fd . $bSc
    im fd

- `-I` = `--no-ignore` do not respect .(git|fd)ignore files
- recursive by default
- sharkdp/fd

### git config's
    fd -HI -tf ^config$ | xargs rg -l 'remote = gh'  # ripgrep

see `$Bash/bashrc-console`

### man
    im fd

- `-d1` = depth 1 (current dir)
- `-E` (= `--exclude`) `<glob>`
- `-I` = `--no-ignore` = don't respect `.(fd|git)ignore`
- `-td` type dir
- `-tf` type file
- `-u` = `--unrestricted` = `--hidden --no-ignore`

### recents
    fd --changed-within 3h
    fd -tf --changed-within 2d

### symlinks
    fd --max-depth 1 -Hl -tl
    fd -H -tl  # only found targets, broken ones with red background
    fd -Hl -tl  # show supposed link source
    fd -tl -HL -X rm  # removes dead links

`-L` follow links into symlinked directories

## ncdu
    ncdu --exclude rsnapshot

NCDU(1)

## ranger
    feh $cIThul/cheatsheet.png &
    r $OSAB/ranger  # my configurations
    r $Cfzd
    ranger --version

can't cope with `utf-16le`

### commands
    :delete => (permanently) current file or selection in directory
    :flat 1/0 => 1/0-level directory flattening
    :trash => current file or selection in directory
    ? => start of help dialogue
    ^r => reload
    c-h / zh => toggle hidden
    dd => cut
    F9 => open outside of tmux, for r (allowing images)
    I => rename
    i => inspect file
    pp => paste
    shift+s => open subshell
    space => mark
    v => mark all
    W => view log
    yy => copy

## rename
    im rename

### perl-rename
    i perl-rename
    perl-rename 's/^\.//' *  # removes leading  .

## Vifm
    /usr/share/vifm/vifm-help.txt
    /usr/share/vifm/vim-doc/doc/vifm-app.txt
    /usr/share/vifm/vim-doc/doc/vifm-lua.txt
    feh -F $cITh/CP/vifm-v0.12-builtin-normal.png &
    r ~/.config/vifm

# forum
- Forum Rules
- Topics by ttoirrah https://bbs.archlinux.org/search.php?action=show_user_topics&user_id=88384

# fun
    cat $CrPl/encoding/EMOJI_CHEAT_SHEET.gfm
    tint  # tetris

## CMatrix
    cmatrix -u 9 -C blue
    man cmatrix

# GNU Privacy Guard
    gpg --export-ownertrust > $ulLA/$host/jo/gnupg-trustdb.txt
    gpg -k | xcol 049956B6 13F327EF Asus expired expires jharr sprbMb trohib
    gpg -K | xcol 049956B6 13F327EF Asus expired expires jharr sprbMb trohib
    im gpg
    r ~/.gnupg

gpg(1)

# help
    apropos
    cheat cheat

## pinfo
    /etc/pinforc
    i pinfo

- lynx-style, but n/N don't work...
- see `$Bash/bashrc-console`

### commands
- no backwards search
- Quite a few don't work, and some crash the terminal...

#### commands that work
    /       -> search
    <space> -> PgDn
    b       -> PgUp
    f       -> next search term

# hw
    cd /sys/devices/system/cpu/cpu0/cpufreq
    doas showkey  # keycodes
    HP ENVY 5532: d0:bf:9c:a2:2f:0e

## avio
    /sys/class/backlight/intel_backlight/max_brightness

### graphics card details
    doas cat /sys/kernel/debug/dri/0/radeon_pm_info
    lspci -vnn | grep VGA -A 12 | xcol Intel Radeon size VGA
    sudo lshw -C display | xcol Radeon size VGA

## printing - CUPS - HP ENVY 5532 WiFi
    doas cupsenable ENVY_5530  # if it's paused
    lpoptions -d ENVY_5530  # set as default
    lpoptions -d ENVY_5530_249  # set as default
    lpoptions -p Envy5532 -o PageSize=A4

### see selected options
    lpoptions -p ENVY_5530 -l | xcol '\*'
    lpoptions -p ENVY_5532 -l | xcol '\*'  # see selected options

## printing - HPLIP - HP ENVY 5532 WiFi
    hp-levels -p ENVY_5530
    hp-setup -b net 192.168.43.249  # when online
    http://192.168.43.249/

## storage
    /proc/filesystems - those supported by the kernel

CP(1)

### directories - dua-cli
    dua [i]
    dua -h

optimised for SSDs

### directories - gdu
    i gdu
    gdu -d
    gdu -nps <directory>

### mkfs.ext4
`/etc/mke2fs.conf` has bytes-per-inode ratios for usage types

### non-optical
    df -h | xcol mnt media
    doas blkid -o list  # shows fs_type
    doas file -s /dev/sdxn | xcol bit FAT

#### fsck
- FSCK(8)
- `sudo umount /dev/sdxn` for `sudo fsck -MV /dev/sdxn`

#### Trash
    gio trash --empty  # empties all .Trash-1000
    gio trash --list  # lists trash by locations

##### snags
    rm -r .Trash-1000/info
    sudo rm -r .Trash-1000/files/<something-thats-stuck>  # can take a while...

#### trash-cli
    $Bash/bashrc-console
    trash-empty  # lists before query

### optical
    cdrecord dev=/dev/sr0 -checkdrive

#### burning
    cdrecord -v -sao dev=/dev/sr0 isoimage.iso
    growisofs

### rsnapshot
    $OSAB/bs-1-to_jo/6-as_root-rsnapshot_automated.sh
    $machBld/etc/rsnapshot.conf
    pgrep rsnapshot
    snapshot_root
    sudo du -sh $rsnapshot
    sudo pkill rsnapshot
    sm $rsnapshot/monthly.6

#### backup localhost without mnt
    lastMonthly=/mnt/WD1001FALS/rsnapshot/monthly.6/localhost/; month=$(date -r $lastMonthly +%y%m%d); echo $month
    sudo rsync -aAivX --delete --progress --exclude=mnt $lastMonthly/ /mnt/WD30EZRZ/Archive/localhost-sbMb-$month

#### checking
    /var/log/rsnapshot > completed successfully
    e -l -s modified $rsnapshot
    journalctl -r | grep rsnapshot | grep Consumed | xcol weekly monthly | mo
    journalctl -u rsnapshot@daily -r
    journalctl -u rsnapshot@hourly -r
    systemctl status rsnapshot-hourly.timer

#### find
    fRs $Bash bashrc-console
    fRs $Drpbx/CAM-toSort0 '01 '
    fRs $Drpbx/CAM-toSort0 Apache
    fRs $Drpbx/CAM-toSort0 Costello
    fRs $Drpbx/CAM-good US
    fRs $JHw _config.yml
    fRs $vimfiles/syntax cmusq.vim
    fRs $LTXj/CzPlanning planning.cls

##### my OBS grabs
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "*.mkv"
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "Queen*.mkv" -exec rm -f {} \;
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "2022-*.mkv" -exec rm -f {} \;

#### quickly lists all instances of directories
```bash
find $rsnapshot/*ly.*/localhost/mnt/SDU3D1TB/Dropbox/JH/Cafezoide/manage/online/* -type d
for d in $(ls $rsnapshot/hourly.*/localhost/home/jo -dtr); do stat -c '%y %n' $d; done  # hourly instances in time order, but not much use as the dates are original creation
ls *ly.*/localhost/home/jo/.config/copyq -d  # CopyQ data directory instances
ls *ly.*/localhost/mnt/*/S* -d  # finds my Share/Sync2 instances
```

#### recover folder
    rsync -irtv --delete $rsnapshot/daily.0/localhost/home/jo/.local/share/mail/ $maild

### udiskie
    pkill udiskie

UDISKIE(8)

# imagey
```bash
convert -list color > $ulLA/IM-convert-list_color.txt
im gs
jpo  # defined in my $Bash/bashrc-wm
rm -r ~/.thumbnails/normal/*
xterm -geometry 160x70+20+20 -ti vt340 -e "lsix; $SHELL" &  # sixel thumbnails
```

## [n]sxiv
```bash
rm -r ~/.cache/sxiv/*
```

### commands
thumbnail mode: `R` reload all

#### image mode
- `n` `p` next previous
- `[` `]` 10x backwards forwards
- `|` `_` flip horizontal vertical
- changes aren't saved

##### pan
- `h` `left`
- `j` `down`
- `k` `up`
- `l` `right`

##### rotate
- `<` 90° ccw
- `>` 90° cw
- `?` 180°

##### scroll
- `H` to left
- `J` to down
- `K` to up
- `L` to right
- `z` to center

##### zoom
- `=` by 100%
- `e` `E` fit width height
- `F` fill (often getting only part of the image)
- `w` fit or 100%
- `W` fit (the default)

#### general
- `q` quit
- `return` toggle image/thumbnail
- `f` toggle fullscreen
- `b` toggle statusbar
- `g` `G` first last
- `r` reload
- `+` `-` zoom in out

### nsxiv
```bash
i nsxiv
ns  # see $Bash/bashrc-wm
tree ~/.cache/nsxiv
```

## pqiv
    pq  # pqiv (recursive, no info, sorted, 2s fade - $Bash/bashrc-wm)

pqiv(1)

## scanimage
    S 55n 3 <imagefilename> <scanheight>

see `$Imagey/Scan.sh`

# LanguageTool package
```bash
languagetool  # GUI
whereis languagetool
```

# LanguageTool symlinked
```bash
java -jar /usr/share/java/LanguageTool/languagetool-commandline.jar -h
java -jar /usr/share/java/LanguageTool/languagetool-commandline.jar --version
java -jar /usr/share/java/LanguageTool/languagetool-commandline.jar --list  # languages
```

## version
```bash
/usr/share/java/LanguageTool/README.md
java -jar /usr/share/java/LanguageTool/languagetool-commandline.jar --version
```

# multimedia
    ~/.config/obs-studio/logs

```bash
for t in *.mp3; do aet "$t" 3; done
mediainfo -h | mo
```

## audio
    v  # alias'd to  vimpc  in  $Bash/bashrc-wm

### cmus
    $ABjo/wm/cmus-rc.conf
    cmus_notify -h
    pgrep cmus

#### kill
    kill -9 "$(pidof cmus)"

##### manually
get the PIDs `ps ax | grep cmus` then for each `kill -9 PID`

### playerctl
    playerctl  # quick guide
    playerctl -l  # (--list-all) available players

### Quod Libet
    pkill exfalso
    pkill quodlibet

## OBS Studio Settings
    Hotkeys > [ Start Recording  Stop Recording ] > Win+Space (= Super + Space)

sbMb: `Video > [ Output (Scaled) Resolution > 1280x720  Common FPS Values > 30 ]`

## OpenShot
    r ~/.openshot_qt
    ~/.openshot_qt/openshot.settings

won't open if `cmus` is playing a track

### less interesting
    r ~/.cache/openshot
    r ~/.local/share/openshot

# network
```bash
cat /etc/hostname
curl ifconfig.co  # IP address
curl ifconfig.co/country
sudo dhcpcd wlwg111v2
sudo ls /var/lib/dhcpcd/
systemctl status nordvpnd.service
```

## NetworkManager
    nmcli connection delete Jo-X10II
    nmcli connection delete cafezoide
    nmcli connection up uuid 0b2a10d5-d801-4c46-bfc6-392f6d77cd01
    nmcli connection up uuid 667c759d-382a-4875-9021-2258cdba8dad
    nmcli connection up uuid 9348d395-9e92-45a5-9b4b-5fc9e7b6a472
    nmcli device wifi connect cafezoide password <password>
    nmcli device wifi connect Jo-X10II password <password>
    sudo grep -r '^psk=' /etc/NetworkManager/system-connections/
    sudo ls /etc/NetworkManager/system-connections/
    systemctl status NetworkManager
    systemctl status NetworkManager-dispatcher

# packages
```bash
checkupdates
expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 500 > $machLg/pacman/expac-500.log  # 500 most recent installs
makepkg --install
pacfinder
pacman -Qdt  # lists all orphans
sudo pacman -U package.pkg.tar.xz
sudo pacman -Rs <packagetoremove>
grep -iE 'installed|upgraded' /var/log/pacman.log | xcol hplip
```

    /etc/pacman.conf
    /var/cache/pacman/pkg/

## Aura
    aura -Pa  # security analysis of all installed AUR packages
    i aura
    sudo aura -Aakux --devel > n  # just for info

## groups
```bash
pacman -Qg base-devel  # lists packages installed
pacman -Sg base-devel  # lists all
```

## list local and remote packages
pacman -Ss <keyword>
pacsearch <keyword>  # better search

## package database locked
pgrep pacman  # to ensure it's not running
sudo rm /var/lib/pacman/db.lck  # delete the stale lock

## pactree
    i pactree

PACTREE(8)

### detailed tree
    pactree -c <package>  # coloured
    pactree -r <package>  # shows other packages that require it

# pass
```bash
pass edit gmail-neomutt
pass cz
pass zou
```

    pb ~/.password-store/.gpg-id
    r ~/.password-store

## Gmail API expiry
```bash
date -d @$(pass cz/GmailAPI/token-expire)
pass cz/GmailAPI/token-expire
```

# scripting
    kill -9 "$(pidof perl)"

## Bash
    [ -f $Thb/parent.lock ] && echo zero file size

### ANSI escape sequences
    $OSAB/Bash/bashrc-generic

#### colours
    bash $ulL/Bash/colours/color-bash.sh
    echo -e "\e[1m\e[95m[1m[95m\e[0m"
    echo -e "=\e[0;31m=Red=\e[0m="
    echo -e "=\e[0;32m=Green=\e[0m="
    echo -e "=\e[0;34m=Blue=\e[0m=\e[1;34m=BoldBlue=\e[0m"

### tput
    tput bold; echo hello

nachoparker

#### cat --show-nonprinting
```bash
for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done
tput setaf 95; tput setaf 95 | cat -v; echo =95
```

# system
    bat -A /etc/hosts
    bm <command>  # batman - only good in full-screen
    cat /proc/cpuinfo
    i hier
    i localectl
    slock  # unlocks when correct user pw is entered
    XF86Sleep
    /usr/share/doc/arch-wiki/html/en

- FILE-HIERARCHY(7)
- Trusted Users

## .desktop
    fd -tf .desktop $OSAB
    locate -r '\.desktop$' > $machLg/desktops.txt
    r /usr/share/applications
    rg Exec= /usr/share/applications  # check others

## alt-sysrq REISUB
1. r unRaw the keyboard
1. e tErminate all processes
1. i kIll all processes
1. s Sync (flush data)
1. u Unmount all
1. b reBoot

## build
    $OSAB/etc/doas.conf
    r $OSAB $ulLA
    r $ulLA/ml-$host/etc-fstab
    vifm $OSAB $ulLA

## fonts
    font-manager &

### /usr/share/fonts/
    fd -L architects
    fd -L consolas

### Fontconfig
    cd /etc/fonts  # to explore the configuration files
    doas fc-cache -f  # regenerates the cache
    fc-list | grep Caskaydia
    fc-list | grep Deja
    fc-list | grep Lohit
    fc-list | grep ubuntu
    fc-list -v ubuntumono
    fc-list > $machLg/fclist.txt

#### fc-scan
    fc-scan /usr/share/fonts/ubuntu/UbuntuMono-R.ttf

In a folder of possible fonts, to check if any are already installed: `for font in $(ls); do fc-list $font; done`

### fontpreview
    fontpreview -h

uses `fzf`

### fun
- Headhunter
- Henny Penny
- HVD Steinzeit
- icomoon

## groups
    cat /etc/group  # list all groups on the system
    id jo  # show uid, gid, and groups for jo

## mimeapps
    gio mime
    handlr -h
    handlr get .png
    handlr list  # neatly presented [Default Applications]
    mimeo -m <fileToOpen>  # reports mimetype
    r /usr/share/applications  # the  *.desktop  files
    ~/.config/mimeapps.list  # the default applications

## monitoring
    btop

### BpyTOP
    bpytop  # supersedes  bashtop

#### keybinds
    h = F1

##### sorting columns
    b = left = previous
    n = right = next

##### tree view
    e toggles it
    spacebar toggles open/closed a branch

## sizes
    sudo du -h --max-depth=1 /usr
    sudo du -h --max-depth=1 /usr/share
    sudo du -sh /boot /etc /home /root /usr

## systemd - journalctl
    journalctl --list-boots
    journalctl --verify
    journalctl | grep Consumed

backed up in `$Bash/bash_profile`

### messages, paged
    journalctl -b  # for this boot
    journalctl -b -1  # for previous boot
    journalctl -b -1 -e  # shows end of  -n1000
    journalctl -b -1 -r  # newest first
    journalctl -b -g 'EFI v'  # shows EFI version

## windows managers
    xrandr --output DVI-0 --auto --primary --output VGA-0 --auto --left-of DVI-0

### awesome
    $machBld/jo/awesome/rc.lua
    modkey+c = c:kill()
    modkey+p = hotkeys_popup

### Openbox
    $Obc/autostart/autostart
    $Obc/schema.pl

#### rc
    $Obc/rc/rc.xml
    Alt+Space => show client menu for active window
    Ctrl+Alt+arrows => move to desktop
    Shift+Alt+arrows => move to desktop, bringing current window along
    win+1 => move the window to monitor 1
    win+2 => move the window to monitor 2
    win+a => Galculator
    win-d => ToggleShowDesktop
    win-f => ToggleMaximize
    win-F1-4 => GoToDesktop 1-4
    win-k => keepassxc
    win-o => $Obc/rc/fixCopyQ.sh
    win-r => Resize
    win-u => urxvt
    win-S-Left/Right/Up/Down => DirectionalCycleWindows <direction>
    win+t => last tmux buffer to X11 clipboard

#### tint2
    $Openbox/tint2rc
    killall -SIGUSR1 tint2  # reloads

# term
    echo $TERM
    neofetch
    watch -n1 "date '+%D%n%T' | figlet -k"

## colours
    bash $ulLB/colours/256/BR-color256.sh
    bash $ulLB/colours/256/SO-BrunoBronosky.sh
    bash $ulLB/colours/256/SE269077-numbers-ordered.sh
    bash $ulLB/colours/256/SE269077-FHauri.sh
    bash $ulLB/colours/awk-rgb-test.sh  # nice one-line gradient
    bash $ulLB/colours/ss64.sh
    bash $ulLB/colours/tripleee+isntn.sh
    colorscript -r
    terminal-colors  # shows what the terminal can do (console only 8 colours)
    terminal-colors -l  # with #xxxxxx's
    terminal-colors -o  # ANSI escape codes

## FIGlet
    figlet Joseph Harriott

figlet(6)

### fonts
```bash
ft  # $OSAB/Bash/bashrc-generic
showfigfonts > $ulLB/FIGletFonts.txt; sed -i 's/ \+$//' $ulLB/FIGletFontsTest.txt
```

## termdown
    termdown --help | mo
    termdown -b 10

## tmux
    $tmx/tmux.conf
    C-a [ -> copy-mode
    C-a ~ -> show-messages
    resize -s 65 120  # good for half of ViewSonic VX2025wm
    tmux list-keys | grep '~'
    tmux list-keys | mo
    joinp -s 2 [-t 1 ]  -> join-pane, joining pane in window 2 [to that in window 1]

- `send-keys` can't decode a Bash environment variable
- TMUX(1)

### session window pane
    M-PgDn/PgUp -> (= C-a (/) ) previous/next session

#### panes
    C-a C-o -> Rotate through the panes
    C-a M-1 -> switch to even-horizontal layout
    C-a M-2 -> switch to even-vertical layout
    C-a M-3 -> switch to main-horizontal layout
    C-a M-4 -> switch to main-vertical layout
    C-a q -> show numbers
    C-a { = swap-pane -U
    C-a } = swap-pane -D

#### windows
    C-a w -> choose window from a list
    M-n -> (= C-a n ) select window n

## urxvt
    $ABjo/wm/urxvt/keystrokes.md
    Alt+s --> urxvt-searchable-scrollback
    appres urxvt
    rxvt-unicode

## test fonts
    Ctrl-Shift-leftClick
    gets weird sizes, and doesn't work in tmux
    printf '\e]710;%s\007' "xft:Hack:Bold:pixelsize=12"
    printf '\e]710;%s\007' "xft:UbuntuMono:Bold:pixelsize=12"
    printf '\e]710;%s\007' "xft:Consolas:Bold:pixelsize=12"

## virtual consoles
    stty -a
    tput works

- `$TERM` is set to 'linux'
- can login concurrently to jo
- Ctrl+Alt+F2  anywhere brings up getty for virtual console tty2

# text-wrangling
    $GHrUse/CP/vim/vim/README.md
    echo $EDITOR
    echo $VISUAL

## CopyQ
    bm copyq
    copyq help | mo
    pkill copyq
    ~/.local/share/copyq/copyq/copyq.log

## vi
    n $cITh/CP/encoding/textWrangling-vi

### Vim
    $ABjo/textEdit/Vim/vimrc
    /usr/share/vim/vim90/pack/dist/opt/
    C /usr/share/vim/vim90
    i vim
    r $vimfiles

#### gVim
    gvim --help | mo
    gvim -geom 200  # height parameter is omitted as it's having no effect

# WAN
```bash
xdg-open https://archlinux.org
```

## Apache HTTP Server
    /var/log/httpd/access_log
    /var/log/httpd/error_log
    r /etc/httpd/conf
    sudo rm -r /srv/http/*

HTTP Server

### /etc/httpd/conf/httpd.conf
configured in `$bSc/4-whenWM/1-softwares.sh`

### httpd.service
    sudo systemctl disable httpd.service --now
    sudo systemctl enable httpd.service --now
    sudo systemctl restart httpd.service; systemctl status httpd.service
    sudo systemctl start httpd.service
    sudo systemctl stop httpd.service

## cloud storage
    s ~/.config/rclone/rclone.conf  # pw is disguised

### Dropbox
```bash
dropbox &  # as in  $Obc/autostart/autostart
killall dropbox
lsof -c dropbox
pkill dropbox; dropbox &
```

#### conflicted copies
```bash
find $Drpbx -path $Drpbx/conflicted -prune -o -name "* conflicted copy*"
find -name "* conflicted copy*" -exec rm -f {} \;
find -name "*(Copie en conflit de *"
```

## email - mutt notmuch
```bash
$Bash/bashrc-clm
grep -r "Georita" *
rsync -irtv --delete $maild/ ~/Arch/maild-$(date '+%Y%m%d%H%M')
```

### $maild
    fd . */*/cur |wc -l  # all of my seen emails
    fd . */*/new  # as yet unseen, a few
    fd . */*/tmp  # usually nothing here, can be ignored
    ~/.local/share/mail/.notmuch

### mutt
    $clMail/neomutt/muttrc-general
    f => forward
    F => toggle important flag (= Star in Gmail)

#### accounts
    $clMail/neomutt/muttrc-accounts/ftml
    $clMail/neomutt/muttrc-accounts/troh

##### zou
    $clMail/neomutt/muttrc-accounts/zou
    echo "content" | nmz -s "subject" jharr@ftml.net -a <attachment1> -a <attachment2> ...

### notmuch search
    nmse najac date:2022
    nmse from:/gough/ date:2023
    nmse from:/j.harriott/ date:2023
    nmse tag:cz tag:zou '*lait*'
    nmse tag:cz tag:zou | wc -l
    nmse tag:zou date:2023
    nmse tag:zou date:june2023
    nmse '"pattern with spaces"'

#### providors
- orange.fr
- yahoo!mail

#### wildcard
    nmse 'orf*'  # finds ORFILA

Only possible at end of string...

### URLs unclickable by receiver
URLs (such as in an email sent from `mutt`) unclickable - so better to send to them with `Thunderbird`

## email - Thunderbird
    default-release:  find -name "* conflicted copy*" -exec rm -f {} \;

locks: `pb $Thb/linuxlock; pb $Thb/Win10ProLock`

## Jekyll
```bash
js
r $JHm
```

## Nginx
    /etc/nginx/nginx.conf
    /etc/nginx/mime.types
    /usr/share/nginx/html/index.html
    r /usr/share/nginx/html

### nginx.service
    sudo systemctl disable nginx.service --now
    sudo systemctl enable nginx.service --now
    sudo systemctl restart nginx.service
    systemctl status nginx.service

## SSH
    $CrPl/networking/SSHconfig/$host
    i sshd_config
    ~/.ssh/config

## weather
    aw

### wttr.in
```bash
curl wttr.in/London
curl wttr.in/Moscow
curl wttr.in/Salt+Lake+City
wp  # in Paris
```

# Zathura
    $ABjo/wm/zathurarc
    i zathurarc

