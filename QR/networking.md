vim: nospell:

```bash
cat /etc/hostname
curl ifconfig.co  # IP address
curl ifconfig.co/country
sudo dhcpcd wlwg111v2
sudo ls /var/lib/dhcpcd/
systemctl status nordvpnd.service
xdg-open https://archlinux.org
```

# Apache HTTP Server
    /var/log/httpd/access_log
    /var/log/httpd/error_log
    r /etc/httpd/conf
    sudo rm -r /srv/http/*

HTTP Server

## /etc/httpd/conf/httpd.conf
configured in `$bSc/4-whenWM/1-softwares.sh`

## httpd.service
    sudo systemctl disable httpd.service --now
    sudo systemctl enable httpd.service --now
    sudo systemctl restart httpd.service; systemctl status httpd.service
    sudo systemctl start httpd.service
    sudo systemctl stop httpd.service

# Dropbox
```bash
dropbox &  # as in  $Obc/autostart/autostart
killall dropbox
lsof -c dropbox
pkill dropbox; dropbox &
```

## conflicted copies
```bash
find $Drpbx -path $Drpbx/conflicted -prune -o -name "* conflicted copy*"
find -name "* conflicted copy*" -exec rm -f {} \;
find -name "*(Copie en conflit de *"
```

# email
    default-release:  find -name "* conflicted copy*" -exec rm -f {} \;

my `Thunderbird` locks: `pb $Thb/linuxlock; pb $Thb/Win10ProLock`

## mutt notmuch
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

# Jekyll
```bash
js
r $JHm
```

# NetworkManager
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

# Nginx
    /etc/nginx/nginx.conf
    /etc/nginx/mime.types
    /usr/share/nginx/html/index.html
    r /usr/share/nginx/html

## nginx.service
    sudo systemctl disable nginx.service --now
    sudo systemctl enable nginx.service --now
    sudo systemctl restart nginx.service
    systemctl status nginx.service

# SSH
    $CrPl/networking/SSHconfig/$host
    i sshd_config
    ~/.ssh/config

# weather
    aw

## wttr.in
```bash
curl wttr.in/London
curl wttr.in/Moscow
curl wttr.in/Salt+Lake+City
wp  # in Paris
```

