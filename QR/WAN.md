vim: nospell:

    i yt-dlp
    whois

- WAN
- WGET(1)

# Apache HTTP Server
    /var/log/httpd/access_log
    /var/log/httpd/error_log
    r /etc/httpd/conf
    sudo rm -r /srv/http/*

HTTP Server

## /etc/httpd/conf/httpd.conf
configured in `$OSAB/bs-4-whenWM/1-softwares.sh`

## httpd.service
    sudo systemctl disable httpd.service --now
    sudo systemctl enable httpd.service --now
    sudo systemctl restart httpd.service; systemctl status httpd.service
    sudo systemctl start httpd.service
    sudo systemctl stop httpd.service
    systemctl status httpd.service

# browse
    xdg-open https://archlinux.org
    ncdu ~/.config/google-chrome

## Chawan
    ch -v
    ch https://en.wikipedia.org
    ~/.config/chawan/history.uri

## Firefox
    st="$HOME/.mozilla/firefox/6qq4cnaa.default-release/storage"
        for big in $st/archives $st/default; do find $big | wc -l; done

## w3m
    /usr/share/doc/w3m/keymap.default
    i w3m
    ws 'https://lite.duckduckgo.com/lite?q=non+duality'
    ws http://en.wikipedia.org/wiki/W3m
    ~/.w3m/config

# cloud storage - Dropbox
```bash
dropbox &  # as in  $Obc/autostart/autostart
killall dropbox
lsof -c dropbox
pgrep dropbox
pkill dropbox; dropbox &
rm -r $Drpbx/.dropbox.cache/*
```

## conflicted copies
```bash
find $Drpbx -path $Drpbx/conflicted -prune -o -name "* conflicted copy*"
find -name "* conflicted copy*" -exec rm -f {} \;
find -name "*(Copie en conflit de *"
```

# email
Thunderbird default-release: `find -name "* conflicted copy*" -exec rm -f {} \;`

## mutt notmuch
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

# Jekyll
	r $Jhm

`js`, `jt` defined in `$AjB/bashrc-wm`

# Nginx
    /etc/nginx/nginx.conf  # http://127.0.0.3
    /etc/nginx/mime.types
    /usr/share/nginx/html/index.html
    r /usr/share/nginx/html

    rsync -irtv --delete /usr/share/nginx/test/ $ITmULl/Arch/networking-usr-share-nginx-test

## nginx.service
    sudo systemctl disable nginx.service --now
    sudo systemctl enable nginx.service --now
    sudo systemctl restart nginx.service
    systemctl status nginx.service

# SSH
    $cITCP/networking-SSHconfig/$host
    i sshd_config
    ~/.ssh/config

# speed
    cloudflare-speed-cli --help
    speedtest-cli -h

# weather
    aw

## wttr.in
```bash
curl wttr.in/London
curl wttr.in/Moscow
curl wttr.in/Salt+Lake+City
wp  # in Paris
```

