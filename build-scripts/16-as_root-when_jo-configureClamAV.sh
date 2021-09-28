#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> ClamAV 1 empty sock file
# as freshclam triggered warning "Clamd was NOT notified"
touch /run/clamav/clamd.ctl
chown clamav:clamav /run/clamav/clamd.ctl
freshclam

#=> ClamAV 2 freshclam daemon - enable
systemctl enable clamav-freshclam.service --now
systemctl status clamav-freshclam.service

#=> ClamAV 3 freshclam daemon - stop
systemctl stop clamav-freshclam.service

#=> ClamAV 3 test
trap - debug  # first turn off debug
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
trap read debug

