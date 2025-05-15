vim: nospell:

    $OSAB/QR.md; m4ps 0 1
    r $misc/linux/QR  # for my more general linux QuickReference

my Arch QuickReference, some of which is relevant to my WSL Ubuntu builds

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

# audio - cmus
    $ABjo/wm/cmus-rc.conf
    :Man cmus
    :Man cmus-remote
    pgrep cmus

## kill
    kill -9 "$(pidof cmus)"

### manually
get the PIDs `ps ax | grep cmus` then for each `kill -9 PID`

## queue
    $ABjo/wm/cmusqueue.sh
    $Drpbx/Cop/AM-toSort0/cmusq

# audio - playerctl
    playerctl  # quick guide
    playerctl -l  # (--list-all) available players

# audio - Quod Libet
    pkill quodlibet

## Ex Falso
    pkill exfalso

follows my `PCManFM` folder settings

# audio - vimpc
- `$ABjo/music/MPD/vimpcrc` maps a better `q` among other things
- `vp` (`$AjB/bashrc-wm`)

# Bash
    $AjB/bash_history.sh
    $AjB/bash_profile
    $OSAB/nodes-root/bashrc
    $ulL/Bash/colours
    /etc/profile
    :Man bash
    :Man mktemp
    im time
    pinfo bash
    pinfo -m bash
    tput bel  # bell

- BASH(1)
- UNIQ(1)

## completion
    complete 2>&1 | tee $machLg/bash.cmplt
    r /usr/share/bash-completion

## file manage - ls
    dircolors --print-ls-colors
    ls ~/{go,mus*,*Shot}; o

### man
    :Man ls
    im ls

## file manage - directory structures
    <directory>  # cd <directory>  ( shopt autocd )
    file ~/.vim  # shows symlink source
    namei ~/.vim  # shows tree, including symlink sources

## file manage - file searching
    find . -iregex '.*\.\(avi\|flv\|mkv\|mov\|mp4\|ogv\)$' > avfiles.txt
    find . -type d -name .git
    find . -type f -name .gitignore
    find . -type f -name "*.pl"
    find . -type f -name "python.vim"

### for configuration files
    fd -I -e conf
    find . -type f -name "*.conf"

### fmtutil.cnf
    /etc/texmf/web2c/fmtutil.cnf

as root: `find / -xdev -iname "*fmtutil.cnf*"`

### grepping
    grep -E '<someText>|<otherText>'
    grep -r --include "*.sh" ' -f ' .
    grep -ri --exclude-dir *Copied* --include "*.tex" chapterstyle .
    grep -ri --include "*.conf" '#=> ' .
    man grep | grep egrep | xcol egrep fgrep

#### manual
- GNU Grep Manual
- GREP(1)

### mlocate
    i locate
    im locate

#### regex searches
    locate -r '\.conf$'
    locate -r '\.json$' | mo
    locate -i 'nick cave'

#### updatedb
    $machBld/etc/updatedb.conf
    doas updatedb
    systemctl status updatedb.timer

### list symlinks
    find . -mindepth 1 -maxdepth 1 -type l -ls  # only in this directory

#### recursively
    find . -type l -ls
    find ~ -path '*/.virtualenvs' -prune -o -type l -ls

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

# documenting
    r $Sig

## dict
    $AjB/bashrc-console
    :Man dict
    client for the Dictionary Server Protocol - nothing stored locally
    i dict

## LibreOffice Calc
- `:Man localc` is basic
- `localc french.csv` then `Character set > Unicode (UTF-8)`

## PDF
    gspdfpng  # Ghostscript convert pdf to png
    i pdfinfo
    pdfjam

### Zathura
    $ABjo/wm/zathurarc  # set window-height <pixels>
    i zathurarc
    zathura -P <page> <pdf> &

## TeX - copied resources
    r $ITscr/CP/TeX
    za $ITscr/CP/TeX/LaTeX/etoolbox.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/datetime2.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/drawing/PGF-TikZ/pgfmanual.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/drawing/PGF-TikZ/pgfplots.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/font/psnfss2e.pdf  # includes package pifont
    za $ITscr/CP/TeX/LaTeX/appearance/font/XeLaTeX/fontspec.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/ragged2e.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/symbols/symbols-a4.pdf
    za $ITscr/CP/TeX/LaTeX/appearance/url.pdf
    za $ITscr/CP/TeX/LaTeX/structure/classes/memoir/memman.pdf
    za $ITscr/CP/TeX/LaTeX/structure/CV/Currvita/currvita.pdf
    za $ITscr/CP/TeX/LaTeX/structure/parts/hyperref/hyperref-doc.pdf
    za $ITscr/CP/TeX/LaTeX/structure/parts/lists/easylist-doc.pdf
    za $ITscr/CP/TeX/LaTeX/structure/parts/lists/enumitem.pdf
    za $ITscr/CP/TeX/LaTeX/structure/parts/titling/contrib-titlesec/titlesec.pdf
    za $ITscr/CP/TeX/LaTeX/structure/parts/scalerel.pdf
    za $ITscr/CP/TeX/LaTeX/structure/pdfpages.pdf

## TeX - LaTeX
    r $DCGRs/CP/MartinThoma-LaTeX-examples
    r $jtCP/TeX/LaTeX  # my MWEs
    x <LaTeX_file_basename>

`mmsc`, `pif`, `xc` defined in `$AjB/bashrc-ob`

### fontspec
    \setmonofont{Caskaydia Cove Regular Nerd Font Complete Mono}
    \setmonofont{Ubuntu Mono}

### LaTeX Polyglossia
    \setmainfont{ArchitectsDaughter}
    \setmainfont{Arimo}
    \setmainfont{FingerPaint-Regular}

## TeX - my packages
    r $LTXj
    r $JHt/IT/CP/TeX/LaTeX
    r ~/texmf

## TeX Live
    /usr/local/texlive/2024/texmf-dist/doc/info
    locx .fmt
    pacman -Qs texlive > $machLg/TeXLive/Arch_packages-$(date '+%Y%m%d%H%M').txt
    pdfjam

### Arch package files
    C /usr/share/texmf-dist/tex/latex/
    /usr/share/texmf-dist/tex/latex/memoir/memoir.cls

### native install
    /usr/local/texlive/2023/texmf-dist/doc/latex/comprehensive/README
    /usr/local/texlive/2023/texmf-dist/doc/latex/comprehensive/SYMLIST
    /usr/local/texlive/2023/texmf-dist/doc/latex/comprehensive/source/symbols.tex
    /usr/local/texlive/2023/texmf-dist/doc/
    /usr/local/texlive/2023/texmf-dist/tex/latex/base/nfssfont.tex
    gdu -nps /usr/local/texlive
    za /usr/local/texlive/2023/texmf-dist/doc/latex/comprehensive/rawtables-a4.pdf
    za /usr/local/texlive/2023/texmf-dist/doc/latex/comprehensive/symbols-a4.pdf
    za /usr/local/texlive/2023/texmf-dist/doc/latex/memoir/memman.pdf
    za /usr/local/texlive/2023/texmf-dist/doc/man/man1/psutils.man1.pdf

#### package manager
    /usr/local/texlive/2023/texmf-var/web2c/tlmgr.log
    /usr/local/texlive/2023/texmf-var/web2c/tlmgr-commands.log
    tlmgr info pgfplots
    tlmgr conf > $machLg/TeXLive/tlmgr/conf-$(date '+%y%m%d%H%M').txt
    tlmgr info > $machLg/TeXLive/tlmgr/info-$(date '+%y%m%d%H%M').txt

`su > <root_pw>` for `tlmgr update --all`

#### tcolorbox
    $/usr/local/texlive/2023/texmf-dist/doc/latex/tcolorbox/README.md
    /usr/local/texlive/2023/texmf-dist/doc/latex/tcolorbox/tcolorbox-example-poster.tex

# Emacs
    $misc/CP/Emacs/init.el
    $TeNo/Emacs/org/org.org
    et <fileToOpenTerminal>
    im emacs
    ~/.emacs.d/.cache

`G` & `T` defined in `$AjB/bashrc-console`

## resources
    fd -e org -p $DCGRs
    r $DCGRs/CP/emacs/syl20bnr-spacemacs-develop  # local fresh clone
    r $ITscr/CP/encoding/textWrangling/Emacs  # PDF guides

### Worg
    $DCGRs/emacs/_bzg-worg/orgcard.org
    r $DCGRs/emacs/_bzg-worg

## Spacemacs
    $ulLAb/Emacs/sm/.spacemacs
    n ~/.sm/.emacs.d
    nvim -O ~/.sm/.spacemacs ~/.sm/.emacs.d/core/templates/.spacemacs.template -c 'windo difft'

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
    fd -tf -e md -x du -h | sort -hr  # sorted by size
    pygmentize -h
    skl

TAIL(1)

## awk
    $ITsrul/awk

- `-F fs`, (`--field-separator fs`) redefines `FS`
- GAWK(1)

## ripgrep
    batgrep
    rg <searchText> -l | xargs sed -i 's/<searchText>/<replaceText>/g'

RG(1)

### man
    :Man rg
    i rg

## sed
    $ITsrul/sed
    i sed
    sed -i '/match/{n;Q}' <file>  # remove all lines after match
    tldr sed

SED(1)

### tealdeer
    tldr -h
    tldr -u  # --update
    tldr tldr

# file manage
    diskus  # size of current directory
    lsd
    n [directory]

- better file managing in `$OSAB/nodes/Bash/bashrc-generic`
- `du` don't work in script...
- FIND(1)
- MV(1)
- rsync(1)
- STAT(1)
- WC(1)

## advcpmv
    cpg --help | mo  # man advcp
    mvg --help | mo  # man advmv

## broot
    i broot

### commands
    alt+enter => quit to current directory
    alt+h => toggle hidden
    ctrl+q [<enter>] => quit
    F5 => refresh

### launch
    br
    br -c :count
    br -d => br --dates => the last modified date
    br -g => br --show-git-info
    br -h => br --hidden
    br -i => br --show-gitignored
    br -p => br --permissions
    br -s => br --sizes

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
    e <symlink>  # red if no reference
    i eza
    more in  $OSAB/nodes-Bash/bashrc-generic

## fd
    :Man fd
    fd . $OSAB | entr notify-send 'a file in $OSAB was modified'

## fuzzy - fzf
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

## fuzzy - fzy
    find . -type f | fzy  # selecta
    i fzy

## fuzzy - skim
    i sk
    i sk
    i sk-tmux

## if  trash-restore  reports  "Non parsable trashinfo file..."
    rm -r $Storage/.Trash-1000
    rm -r /mnt/ST4000VN008/.Trash-1000

## ncdu
    ncdu --exclude rsnapshot
    ncdu --exclude Cop-IT

NCDU(1)

## ranger
    feh $ITsrul/cheatsheet.png &
    r $OSAB/nodes-terminal/ranger  # my configurations
    r $Cfzd
    ranger --version

can't cope with `utf-16le`

### commands
    :delete => (permanently) current file or selection in directory
    :flat 1/0 => 1/0-level directory flattening
    :trash => current file or selection in directory
    ? => start of help dialogue
    ^r => reload
    a => rename_append
    backspace / c-h / zh => toggle hidden
    dd => cut
    du => shell -p du --max-depth=1 -h --apparent-size
    dU => shell -p du --max-depth=1 -h --apparent-size | sort -rh
    E => edit
    f9 => open outside of tmux, for r (allowing images)
    ge => cd /etc
    gh => cd ~
    gM => cd /mnt
    gr => cd /
    gu => cd /usr
    I => rename
    i => inspect file
    or set sort_reverse!
    oz set sort=random
    os chain set sort=size;      set sort_reverse=False
    ob chain set sort=basename;  set sort_reverse=False
    on chain set sort=natural;   set sort_reverse=False
    om chain set sort=mtime;     set sort_reverse=False
    ot chain set sort=type;      set sort_reverse=False
    oe chain set sort=extension; set sort_reverse=False
    oS chain set sort=size;      set sort_reverse=True
    oB chain set sort=basename;  set sort_reverse=True
    oN chain set sort=natural;   set sort_reverse=True
    oM chain set sort=mtime;     set sort_reverse=True
    oT chain set sort=type;      set sort_reverse=True
    oE chain set sort=extension; set sort_reverse=True
    o1 tab_open 1
    o2 tab_open 2
    o3 tab_open 3
    o4 tab_open 4
    o5 tab_open 5
    o6 tab_open 6
    o7 tab_open 7
    o8 tab_open 8
    o9 tab_open 9
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

## Samokovarov's jump
    i jump
    j <fuzzysearch> [<FuzzyLook> ...]  then j for subsequent matches
    jump clean  # I have in fcrontab
    jump top | mo
    jump --help
    r ~/.jump

## tree lists
    i tree

`$OSAB/nodes/Bash/bashrc-generic`

## Vifm
    FF $ITscr/CP/vifm-v0.12-builtin-normal.png
    v  # ($AjB/bashrc-console)
    v $DJH $DJH

## zoxide
    ~/.local/share/zoxide/db.zo
    i zoxide
    i zoxide-add
    i zoxide-import
    i zoxide-query
    ji <fuzzy_pattern> > Enter > <more_fuzzy_patter> > Enter/Esc
    zoxide query -ls | mo

# forum
    fbbcode

- Forum Rules
- Topics by ttoirrah https://bbs.archlinux.org/search.php?action=show_user_topics&user_id=88384

# fun
    cat $ITsCP/encoding/EMOJI_CHEAT_SHEET.gfm
    tint  # tetris

## CMatrix
    cmatrix -u 9 -C blue
    man cmatrix

# GNU Privacy Guard
    gpg --export-ownertrust > $ulLA/ml-$host/jo/gnupg-trustdb.txt
    im gpg
    pgpdump -h
    r ~/.gnupg

gpg(1)

## show keys
    xcgpgk() { xcol 049956B6 13F327EF Asus expired expires jharr sprbMb trohib; }

- all keys `gpg -k | xcgpgk`
- secret keys `gpg -K | xcgpgk`

# help
    apropos
    cheat cheat

## manpages
    o $MANPAGER
    o $MANPATH

## pinfo
    /etc/pinforc
    fd '\.info' /usr
    i fzf
    i pinfo

- lynx-style, but n/N don't work...
- see `$AjB/bashrc-console`

### commands
- no backwards search
- Quite a few don't work, and some crash the terminal...

#### commands that work
    /       -> search
    <space> -> PgDn
    b       -> PgUp
    f       -> next search term

# hw
    $machBld/jo/f1t2t3/f1t2t3.sh
    cd /sys/devices/system/cpu/cpu0/cpufreq
    doas showkey  # keycodes

## avio
    /sys/class/backlight/intel_backlight/max_brightness

### graphics card details
    doas cat /sys/kernel/debug/dri/0/radeon_pm_info
    lspci -vnn | grep VGA -A 12 | xcol Intel Radeon size VGA
    sudo lshw -C display | xcol Radeon size VGA

## cbh - keyboard
    xev | grep keycode

### Logitech K280e
      alt+3 --> €
      alt+5 --> ½
       rh | --> ~
       rh \ --> #
    shift+2 --> "
    shift+3 --> £
          " --> @

    :Tabularize /-->/r1c1l0

## printing - HP ENVY WiFi
    HP ENVY 5532: d0:bf:9c:a2:2f:0e

### CUPS
    doas cupsenable ENVY_Inspire_7200  # if it's paused
    lpoptions -d ENVY_Inspire_7200  # sets as default in  ~/.cups/lpoptions
    lpoptions -p Envy5532 -o PageSize=A4

#### see selected options
    lpoptions -p ENVY_5530 -l | xcol '\*'
    lpoptions -p ENVY_5532 -l | xcol '\*'  # see selected options

### HPLIP
    hp-levels -p ENVY_5530
    hp-setup -b net 192.168.43.249  # when online
    http://192.168.43.249/

## storage
    $misc/linux/slJH.sh  # check for symlinks which could bother Dropbox
    /proc/filesystems - those supported by the kernel
    doas file -s /dev/sdx(n)
    i ioping

- `Asunder CD Ripper` rips to `~`
- CP(1)
- optical: `growisofs`

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
    df -h /run/media/jo/*
    df -h | xcol mnt media
    doas file -s /dev/sdxn | xcol bit FAT
    findmnt

#### fsck
- FSCK(8)
- `sudo umount /dev/sdxn` for `sudo fsck -MV /dev/sdxn`

#### Trash
    gio trash --empty  # empties all .Trash-1000
    gio trash --list  # lists trash by locations

##### snags
    rm -r .Trash-1000/info
    sudo rm -r .Trash-1000/files/<something-thats-stuck>  # can take a while...

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
    journalctl -r | grep rsnapshot | grep Consumed | xcol weekly monthly | mo
    journalctl -u rsnapshot@daily -r
    journalctl -u rsnapshot@hourly -r
    systemctl status rsnapshot-hourly.timer

#### find
    n $rsnapshot/daily.0/localhost/$Drpbx/Cop/AM-toSort0
    n $rsnapshot/daily.1/localhost$MSWin10/mb
    n $rsnapshot/hourly.0/localhost/$Drpbx/Cop/AM-toSort0

##### fRs
    $AjB/bashrc-console
    fRs $AjB bashrc-console
    fRs $CfWk/technos/civil/catering/CM-DeLonghiDinamica/Fr staplable.tex
    fRs $DaLi SNCF
    fRs $Drpbx/Cop Björk
    fRs $Drpbx/Cop/AM-toSort0 'ZZ Top'
    fRs $Drpbx/Cop/AM-toSort0 Europe
    fRs $Drpbx/Cop/AM-toSort0 France
    fRs $Drpbx/Cop/AM-toSort0/Europe Nordic
    fRs $Drpbx/Cop/AM-toSort0/Europe/Nordic Björk
    fRs $DWp/pn/internet internet.dw
    fRs $JHw _config.yml
    fRs $jtCP/TeX/LaTeX/tikz shadows-glow.tex
    fRs $LTXj/CzPlanning planning.cls
    fRs $machBld/jo/Bash VsLmore
    fRs $Obc/rc rc.xml
    fRs $onGH/misc/CP/PerlTools mysmsMD.pl
    fRs $TeNo/md-JH-DailyLife DailyLife.md
    fRs $vfp/packs-cp/opt/vim-dokuwiki/syntax dokuwiki.vim
    fRs $vfn/lua/lazy dropbar.lua
    fRs $vimfiles/syntax cmusq.vim
    fRs $vfv/plugin plugin.vim
    fRs /etc sudoers

##### my OBS grabs
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "*.mkv"
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "Queen*.mkv" -exec rm -f {} \;
    find $rsnapshot/*/localhost/home/jo/ -maxdepth 1 -type f -name "2022-*.mkv" -exec rm -f {} \;

##### versions of a particular file
    find $rsnapshot/*/localhost/$TeNo/md-JH-DailyLife/roles/ -maxdepth 1 -type f -name "roles.md" -ls  # not easy to sort
    fd roles.md $rsnapshot/*/localhost/$TeNo/md-JH-DailyLife/roles --max-depth 1 -l | sort > roles.fetl
    $rsnapshot/hourly.0/localhost/$AjB/export-jo

#### interval directories
    for y in h d w m; do find $rsnapshot -maxdepth 1 -mindepth 1 -type d -name "$y*" | sort -V; done | while read -r rsd; do o $rsd; done
    so * | grep 700; fd 'bash_history$' */localhost/home/jo/Arch --max-depth 1 -x stat {} -c '%Y %n %y' | sort -r
    sudo diff --no-dereference -qr hourly.0 hourly.1 > hourly0+1.gnudiff

##### permissions
- they're owned by root, but 755 so I can look inside
- the one being backed up to can have permission reduced to 700

#### quickly lists all instances of directories
```bash
find $rsnapshot/*ly.*/localhost/mnt/SDU3D1TB/Dropbox/JH/Cafezoide/manage/online/* -type d
for d in $(ls $rsnapshot/hourly.*/localhost/home/jo -dtr); do stat -c '%y %n' $d; done  # hourly instances in time order, but not much use as the dates are original creation
ls *ly.*/localhost/home/jo/.config/copyq -d  # CopyQ data directory instances
ls *ly.*/localhost/mnt/*/S* -d  # finds my Share/Sync2 instances
```

#### recent directories
    $rsnapshot/hourly.0/localhost$CzMa/planning/m1-n/n9t-_benevoles-appels-Joseph
    $rsnapshot/hourly.0/localhost$CzMa/expenses/mine/oab-/noReceipts
    $rsnapshot/hourly.0/localhost/mnt/SDU3D1TB/Dropbox/Cop/AM-toSort0
    $rsnapshot/hourly.1/localhost$CzMa/expenses/mine/oab-/noReceipts

#### recover folder
    rsync -irtv --delete $rsnapshot/daily.0/localhost/home/jo/.local/share/mail/ $maild

### udiskie
    $Obc/autostart/autostart
    pgrep udiskie
    pkill udiskie
    udiskie -h

UDISKIE(8)

## suspend
- `/sys/power/mem_sleep` states [current]
- `fn+f12` invokes `XF86Sleep` = `systemctl suspend`

# imagey
```bash
im gs
jpo  # defined in my $AjB/bashrc-wm
rm -r ~/.thumbnails/normal/*
xterm -geometry 160x70+20+20 -ti vt340 -e "lsix; $SHELL" &  # sixel thumbnails
```

## ImageMagick
    magick -list color > $ulLA/IM-magick-list_color.txt

font list: `magick -list font > $machLg/IMfonts.IMfo`

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
    i nsxiv
    ns  # see $AjB/bashrc-wm

## pqiv
    pq  # pqiv (recursive, no info, sorted, 2s fade - $AjB/bashrc-wm)

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
java -jar $ITscc/CP/LanguageTool/languagetool-commandline.jar -h
java -jar $ITscc/CP/LanguageTool/languagetool-commandline.jar --version
java -jar $ITscc/CP/LanguageTool/languagetool-commandline.jar --list  # languages
```

## version
```bash
$ITscc/CP/LanguageTool/README.md
java -jar $ITscc/CP/LanguageTool/languagetool-commandline.jar --version
```

# multimedia
    i sox
    ~/.config/obs-studio/logs

```bash
for t in *.mp3; do aet "$t" 3; done
mediainfo -h | mo
```

## mpv
    r /usr/share/doc/mpv

MPV(1)

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
    nmcli connection delete Jo-OPPO-A76
    nmcli connection delete Jo-X10II
    nmcli connection delete cafezoide
    nmcli connection up uuid 0b2a10d5-d801-4c46-bfc6-392f6d77cd01
    nmcli connection up uuid 667c759d-382a-4875-9021-2258cdba8dad
    nmcli connection up uuid 9348d395-9e92-45a5-9b4b-5fc9e7b6a472
    nmcli device wifi connect cafezoide password <pw>
    nmcli device wifi connect Jo-X10II password <pw>
    sudo grep -r '^psk=' /etc/NetworkManager/system-connections/
    sudo ls /etc/NetworkManager/system-connections/
    systemctl status NetworkManager
    systemctl status NetworkManager-dispatcher

### applet
    nm-applet &
    pgrep nm-applet

can fail to start after waking system

# packages
```bash
expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 500 > $machLg/pacman/expac-500.log  # 500 most recent installs
makepkg --install
pacfinder
grep -iE 'installed|upgraded' /var/log/pacman.log | xcol hplip
```

## Aura
    aura -Pa  # security analysis of all installed AUR packages
    i aura
    sudo aura -Aakux --devel > n  # just for info

## Flatpak
    /var/lib/flatpak/exports/bin
    org.keepassxc.KeePassXC &

## groups
```bash
pacman -Qg base-devel  # lists packages installed
pacman -Sg base-devel  # lists all
```

## package database locked
pgrep pacman  # to ensure it's not running
sudo rm /var/lib/pacman/db.lck  # delete the stale lock

## pacman
    /etc/pacman.conf
    checkupdates
    gpg --homedir /etc/pacman.d/gnupg --list-keys > ~/Arch/root/PacmanKeys-$(date +%y%m%d).txt
    pacman <operation> [options] [targets]
    pacman -Qdt  # lists all orphans
    pacman -Qu | grep -Eo '^[^ ]+' | xargs pacman -Si | grep -E 'Name|Depends On' | grep -B1 'nodejs-lts-jod'
    sudo du -sh /var/cache/pacman/pkg
    sudo pacman -U package.pkg.tar.xz
    sudo pacman -Rs <packagetoremove>

- `-Q` (`--query`)
- `-S` (`--sync`) synchronize packages from servers
    - `-c` (`--clean`) remove unused packages from the cache
        - `Scc` clean out the cache
    - `-i` (`--info`) on a package
        - `Sii` shows packages depend on this package
    - `-s <regexp>` (`--search`)
    - `-u` (`--sysupgrade`)
    - `-y` (`--refresh`) refresh copy of the master package list (use with `-u`)
        - `Syy` force refresh
- pacman(8)

### list local and remote packages
```bash
pacman -Ss <keyword>
pacsearch <keyword>  # better search
```

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

PASS(1)

## Gmail API expiry
```bash
date -d @$(pass cz/GmailAPI/token-expire)
pass cz/GmailAPI/token-expire
```

# scripting
    kill -9 "$(pidof perl)"

## Bash
    [ -f $Thb/parent.lock ] && echo zero file size
    r $ulL/Bash

### ANSI escape sequences
    $OSL/nodes/bashrc-generic

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

# spelling resources
    ss="$HOME/Arch/root/spell_sources.ffl"; rhash --sha256 /usr/share/hunspell/* > $ss; rhash --sha256 /usr/share/myspell/dicts/* >> $ss; sort -o $ss $ss

## Hunspell
    /usr/share/hunspell
    i hunspell

# system
    $ABjo/wm/Xresources/Xresources
    bat -A /etc/hosts
    bm <command>  # batman (replacing man) only good in full-screen
    cat /proc/cpuinfo
    find /boot/vmli*  # lists available kernels
    i localectl
    r /usr/share/applications  # the  *.desktop  files
    slock  # unlocks when correct user pw is entered
    XF86Sleep
    /usr/share/doc/arch-wiki/html/en

- `Qt`: `Q qt6`
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
    r $ulLA/ml-$host/etc/fstab
    rsync -irtv --delete $OSAB/ ~/Play0/OSAB
    v $OSAB $ulLA

## filesystem hierarchy
    i hier

- FILE-HIERARCHY(7)
- `uf()` (= usr files) in `$OSAB/Bash/bashrc-generic)`

## fonts
    font-manager &

### /usr/share/fonts/
    fd -L architects
    fd -L broot
    fd -L consolas
    fd -L nerd
    fd -L symbola
    C $ITscc/unix-linux-forArch-fonts

`usf()` (`$OSAB/Bash/bashrc-generic`)

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

## mimeapps
    /usr/share/applications/mimeinfo.cache
    gio yime
    handlr -h
    handlr get .png
    handlr list  # neatly presented [Default Applications]
    mimeo -h
    mimeo -m <fileToOpen>  # reports mimetype
    ~/.config/mimeapps.list  # the default applications
    ~/.local/share/applications/mimeapps.list  # empty, deprecated

## monitoring
    btop

IOSTAT(1)

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

## security
    $OSAB/etc/sudoers/sudoers

### groups
    cat /etc/group  # list all groups on the system
    id jo  # show uid, gid, and groups for jo

## sizes
    sudo du -h --max-depth=1 /usr
    sudo du -h --max-depth=1 /usr/share
    sudo du -sh /boot /etc /home /root /usr

## systemd - journalctl
    journalctl --disk-usage
    journalctl --list-boots
    journalctl --verify
    journalctl | grep Consumed

backed up in `$AjB/bash_profile`

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
    openbox --reconfigure

`XDG_CURRENT_DESKTOP` ain't set

#### rc
    $Obc/rc/rc-generic.xml
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

## Xfce
    ~/.config/autostart/Alacritty.desktop
    ~/.config/autostart/Conky.desktop
    ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
    ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

# terminal
    $OSAB/nodes-terminal/wezterm.lua ($OSAB/nodes-set/jo-0.sh)
    $OSAB/nodes/wezterm.lua
    fgconsole  # reports tty number
    neofetch
    o $PAGER
    o $TERM
    watch -n1 "date '+%D%n%T' | figlet -k"

## Alacritty
    $machBld/alacritty.toml

scroll don't work in `tmux`

## colours
    bash $ulLB/colours/256/BR-color256.sh
    bash $ulLB/colours/256/SE269077-numbers-ordered.sh
    bash $ulLB/colours/awk-rgb-test.sh  # nice one-line gradient
    colorscript -r  # shell-color-scripts
    terminal-colors  # shows what the terminal can do (console only 8 colours)
    terminal-colors -l  # with #xxxxxx's
    terminal-colors -o  # ANSI escape codes

### using tput
    $OSL/nodes/bashrc-generic
    bash $ulLB/colours/256/SO-BrunoBronosky.sh
    bash $ulLB/colours/256/SE269077-FHauri.sh
    bash $ulLB/colours/ss64.sh
    bash $ulLB/colours/tripleee+isntn.sh

## FIGlet
    figlet Joseph Harriott
    watch -n1 "date '+%T'|figlet" # clock

- figlet(6)
- `-t` selects terminal width (instead of `-w 80` default)

### fonts
    ft  # $OSAB/Bash/bashrc-generic

`showfigfonts Deauram > ~/FIGletFonts.txt; sed -i 's/ \+$//' ~/FIGletFonts.txt` then reduced and copied to `$ulLB/FIGletFontsDeauram.txt`

## termdown
    termdown --help | mo
    termdown -b 10

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

## tmux
    resize -s 65 120  # good for half of ViewSonic VX2025wm

TMUX(1)

## virtual consoles
    stty -a
    tput works

- `$TERM` is set to `linux`
- can login concurrently to `jo`
- `ctrl+alt+f2` anywhere brings up getty for virtual console `tty2`

# text wrangling
    $DCGRs/CP/vim/vim/README.md
    :s#/mnt/SDU3D1TB/Dropbox/JH/core/TextNotes#    $TeNo
    o $EDITOR
    o $VISUAL

## CopyQ
    bm copyq
    pgrep copyq
    copyq help | mo
    ~/.local/share/copyq/copyq/copyq.log

## vi
    n $ITscr/CP/encoding/textWrangling-vi

### vim variants
    rsync -irtv --delete $vimfiles/ ~/Play0/vfb

#### Nvim
    /usr/share/nvim/runtime/doc/help.txt
    /usr/share/nvim/runtime/doc/treesitter.txt
    /usr/share/nvim/runtime/filetype.lua
    /usr/share/nvim/runtime/lua/vim/filetype.lua
    C /usr/share/nvim/runtime/ftplugin
    C /usr/share/nvim/runtime/syntax
    nn  # $AjB/bashrc-console
    r ~/.local/share/nvim
    r ~/.vimswap
    r /usr/share/nvim/runtime

nvim-treesitter shared objects: `ls ~/.local/share/nvim/lazy/nvim-treesitter/parser`

##### log file
    :echo $NVIM_LOG_FILE
    ~/.local/state/nvim/log

#### Vim
    $ABjo/textEdit/Vim/vimrc
    i vim
    n ~/.vimswap
    r $vimfiles

##### gVim
    gvim --help | mo
    gvim -geom 200  # height parameter is omitted as it's having no effect

##### installation files - from  Arch  packages
    /usr/share/vim/vimfiles/syntax/conkyrc.vim
    r /usr/share/vim/vimfiles/syntax

##### installation files - from  vim-runtime
    /usr/share/vim/vimfiles/archlinux.vim
    r /usr/share/vim/vim91/pack/dist/opt/
    C /usr/share/vim/vim91/ftplugin/
    C /usr/share/vim/vim91/syntax/
    C /usr/share/vim/vim91

# WAN
```bash
i yt-dlp
xdg-open https://archlinux.org
```

WGET(1)

## Apache HTTP Server
    /var/log/httpd/access_log
    /var/log/httpd/error_log
    r /etc/httpd/conf
    sudo rm -r /srv/http/*

HTTP Server

### /etc/httpd/conf/httpd.conf
configured in `$OSAB/bs-4-whenWM/1-softwares.sh`

### httpd.service
    sudo systemctl disable httpd.service --now
    sudo systemctl enable httpd.service --now
    sudo systemctl restart httpd.service; systemctl status httpd.service
    sudo systemctl start httpd.service
    sudo systemctl stop httpd.service
    systemctl status httpd.service

## Chawan
    ch https://en.wikipedia.org
    ~/.config/chawan/history.uri

## cloud storage - Dropbox
```bash
dropbox &  # as in  $Obc/autostart/autostart
killall dropbox
lsof -c dropbox
pkill dropbox; dropbox &
```

### conflicted copies
```bash
find $Drpbx -path $Drpbx/conflicted -prune -o -name "* conflicted copy*"
find -name "* conflicted copy*" -exec rm -f {} \;
find -name "*(Copie en conflit de *"
```

## cloud storage - rclone
    rclone lsd ZCzNc:
    s ~/.config/rclone/rclone.conf  # pw is disguised

## email - mutt notmuch
```bash
$OSL/nodes/bashrc-clm
grep -r "Georita" *
rsync -irtv --delete $maild/ ~/Arch/maild-$(date '+%Y%m%d%H%M')
```

### $maild
    fd . */*/cur | wc -l  # all of my seen emails
    fd . */*/new  # as yet unseen, a few
    fd . */*/tmp  # usually nothing here, can be ignored
    ~/.local/share/mail/.notmuch

### mutt
    $clMn/muttrc-general
    f => forward
    F => toggle important flag (= Star in Gmail)

#### accounts
    $clMn/muttrc-accounts/fm
    $clMn/muttrc-accounts/troh

##### zou
    $clMn/muttrc-accounts/zou
    echo "content" | nmz -s "subject" jharr@ftml.net -a <attachment1> -a <attachment2> ...

### notmuch
    $lclm/notmuch-config-backup

#### search
    nmse najac date:2022
    nmse from:/gough/ date:2023
    nmse from:/j.harriott/ date:2023
    nmse tag:cz tag:zou '*lait*'
    nmse tag:cz tag:zou | wc -l
    nmse tag:zou date:2023
    nmse tag:zou date:june2023
    nmse '"pattern with spaces"'

##### providors
- orange.fr
- yahoo!mail

##### wildcard
    nmse 'orf*'  # finds ORFILA

Only possible at end of string...

### URLs unclickable by receiver
URLs (such as in an email sent from `mutt`) unclickable - so better to send to them with `Thunderbird`

## email - Thunderbird
    default-release:  find -name "* conflicted copy*" -exec rm -f {} \;

locks: `pb $Thb/linuxlock; pb $Thb/Win10ProLock`

## Jekyll
	r $JHm

`js`, `jt` defined in `$AjB/bashrc-wm`

## Nginx
    /etc/nginx/nginx.conf  # http://127.0.0.3
    /etc/nginx/mime.types
    /usr/share/nginx/html/index.html
    r /usr/share/nginx/html

    rsync -irtv --delete /usr/share/nginx/test/ $jtULl/Arch/networking-usr-share-nginx-test

### nginx.service
    sudo systemctl disable nginx.service --now
    sudo systemctl enable nginx.service --now
    sudo systemctl restart nginx.service
    systemctl status nginx.service

## SSH
    $ITsCP/networking-SSHconfig/$host
    i sshd_config
    ~/.ssh/config

## w3m
    /usr/share/doc/w3m/keymap.default
    i w3m
    ws 'https://lite.duckduckgo.com/lite?q=non+duality'
    ws http://en.wikipedia.org/wiki/W3m
    ~/.w3m/config

## weather
    aw

### wttr.in
```bash
curl wttr.in/London
curl wttr.in/Moscow
curl wttr.in/Salt+Lake+City
wp  # in Paris
```

