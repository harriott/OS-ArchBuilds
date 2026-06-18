#!/bin/bash

# from root,  bash $OSAB/bs-1-into_jo/6-sudo-configure_freshclam.sh

set -ev  # quits on error, prints each statement here, including comments

# #=> ClamAV 0 empty sock file
# # when freshclam triggered warning "Clamd was NOT notified"
# touch /run/clamav/clamd.ctl
# chown clamav:clamav /run/clamav/clamd.ctl
# freshclam

#=> ClamAV 1 freshclam daemon 0 enable
systemctl enable clamav-freshclam --now
systemctl status clamav-freshclam

# #=> ClamAV 1 freshclam daemon 1 stop
# systemctl stop clamav-freshclam.service

#=> ClamAV 2 test
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
echo "- should've seen  \"stdin: Eicar-Test-Signature FOUND\""

