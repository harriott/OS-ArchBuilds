#!/bin/bash

# $clMail/msmtprc/oauth2tool.sh
# Joseph Harriott - Tue 30 Aug 2022


# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!!!!  this no longer works   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# see  https://superuser.com/q/1723180/242800
#  (= my  $jtUL/linux/email/oauth2tool_sh/msmtp-OAuth2-Gmail-mutt.md)

# !!!!!  this no longer works   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


# my adaptation of  oauth2token
# -----------------------------
#  "Msmtp setup for GMail with OAuth2" - Christian Tenllado
#  https://github.com/tenllado/dotfiles/tree/master/config/msmtp

# argument: your Gmail username
# output: an unexpired access token, to be used in your  ~/.config/msmtp/config

# This script assumes that you have done the following
#
#   1. Set up your Gmail API. I did it with the Python Quickstart
#        https://developers.google.com/gmail/api/quickstart/python
#      You will receive your Client ID and your Client Secret.
#
#   2. Generated your refresh token with a preliminary run of Gmail's  oauth2.py

#        $ python2 oauth2.py --user=<yourGmail> --client_id=<yourClientID> \
#            --client_secret=<yourClientSecret --generate_oauth2_token
#
#   3. Configured your  ~/.password-store
#
#        echo <yourClientID>     | pass insert -e username/GmailAPI/CID
#        echo <yourClientSecret> | pass insert -e username/GmailAPI/CS
#        echo <yourRefreshToken> | pass insert -e username/GmailAPI/refresh
#        echo 0                  | pass insert -e troh/GmailAPI/token-expire
#
#        Note: this script will first check if your access token is expired
#          if no, it will just grab it from your  ~/.password-store
#          if yes, it will rerun  oauth2.py  to generate a new token and expiry time
#            and save them both in your  ~/.password-store

# My ~/.config/msmtp/config  looks like this:
#
#        defaults
#        tls	on
#        tls_trust_file	/etc/ssl/certs/ca-certificates.crt
#        logfile	~/.config/msmtp/msmtp.log
#
#        account username
#        auth oauthbearer
#        host smtp.gmail.com
#        port 587
#        from username@gmail.com
#        user username@gmail.com
#        passwordeval bash oauth2tool.sh <handle>
#        # echo "test of msmtpConfig" | msmtp -a <handle> <destination_email_address>

handle=$1  # for use in parameter expansions

#  my  bashrc  sources my bash script  $lclm/muttrc-emails  which contains lines like this
#   export <handle>='<username>@gmail.com'
#   such that  ${!1}  equates to my full Gmail address

get_access_token() {
    # $lclm  should point to the directory that contains your local copy of  oauth2.py

    { IFS= read -r tokenline && IFS= read -r expireline; } < \
    <(python2 $lclm/oauth2.py --user=${!1} \
    --client_id=$(pass $handle/GmailAPI/CID) \
    --client_secret=$(pass $handle/GmailAPI/CS) \
    --refresh_token=$(pass $handle/GmailAPI/refresh))

    token=${tokenline#Access Token: }
    expire=${expireline#Access Token Expiration Seconds: }
}

token="$(pass $handle/GmailAPI/token)"
# Christian included an expire time to avoid unneccessary calls
    expire="$(pass $handle/GmailAPI/token-expire)"
    now=$(date +%s)

if [[ $token && $expire && $now -lt $((expire - 60)) ]]; then
    echo $token
else
    get_access_token
    echo $token | pass insert -e $handle/GmailAPI/token
    expire=$((now + expire))
    echo $expire | pass insert -e $handle/GmailAPI/token-expire
    echo $token
fi

