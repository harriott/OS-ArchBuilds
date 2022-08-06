#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> ClamAV 0 empty sock file
# # as freshclam triggered warning "Clamd was NOT notified"
# touch /run/clamav/clamd.ctl
# chown clamav:clamav /run/clamav/clamd.ctl
# freshclam

#=> ClamAV 1 freshclam daemon 0 enable
systemctl enable clamav-freshclam.service --now
systemctl status clamav-freshclam.service

# #=> ClamAV 1 freshclam daemon 1 stop
# systemctl stop clamav-freshclam.service

#=> ClamAV 2 test
trap - debug  # first turn off debug
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
trap read debug

