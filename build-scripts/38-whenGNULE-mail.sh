#!/bin/bash
# vim: fdl=1:


cp -f $GNULE/mbsyncrc-backup ~/.mbsyncrc
cp -f $GNULE/msmtprc-backup ~/.msmtprc
chmod 600 ~/.msmtprc
cp -f $GNULE/notmuch-config-backup ~/.notmuch-config

