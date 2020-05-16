#!/bin/bash

# Joseph Harriott - Sat 16 May 2020

# my adaptation of  oauth2token
# -----------------------------
#  "Msmtp setup for GMail with OAuth2" - Christian Tenllado
#  https://github.com/tenllado/dotfiles/tree/master/config/msmtp


# argument: your Gmail username

# This script assumes that you have done the following

#   1. Set up your Gmail API. I did it with the Python Quickstart
#        https://developers.google.com/gmail/api/quickstart/python
#
#   2. Configured your ~/.config/msmtp/config correctly.  Mine looks like this:
#
#        defaults
#        tls	on
#        tls_trust_file	/etc/ssl/certs/ca-certificates.crt
#        logfile	~/.config/msmtp/msmtp.log

#        account username
#        auth oauthbearer
#        host smtp.gmail.com
#        port 587
#        from username@gmail.com
#        user username@gmail.com
#        passwordeval pass username/GmailAPI/token
#
#   3. You've preloaded your  ~/.password-store
#        echo $(date +%s) | pass insert -e $user/GmailAPI/token-expire
#        echo <GoogleAPIClientID> | pass insert -e username/GmailAPI/CID
#        echo <GoogleAPIClientSecret> | pass insert -e username/GmailAPI/CS
#        echo <GoogleAPIClient_refresh_token> | pass insert -e username/GmailAPI/refresh

user=$1
# user=username

token="$(pass $user/GmailAPI/token)"
expire="$(pass $user/GmailAPI/token-expire)"
now=$(date +%s)

if [[ $token && $expire && $now -lt $((expire - 60)) ]]; then
    echo $token
else
    get_access_token
    echo $token | pass insert -e $user/GmailAPI/token
    expire=$((now + expire))
    echo $expire | pass insert -e $user/GmailAPI/token-expire
    echo $token
fi

get_access_token() {
    # $GNULE/GmailAPI  should point to the directory that contains  oauth2.py
    # https://github.com/google/gmail-oauth2-tools/blob/master/python/oauth2.py

    { IFS= read -r tokenline && IFS= read -r expireline; } < \
    <(python2 $GNULE/GmailAPI/oauth2.py --user=$account \
    --client_id=$(pass $user/GmailAPI/CID) \
    --client_secret=$(pass $user/GmailAPI/CS) \
    --refresh_token=$(pass $user/GmailAPI/refresh))

    token=${tokenline#Access Token: }
    expire=${expireline#Access Token Expiration Seconds: }
}

