#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-1-into_jo/8-sudo-configure_freshclam.sh

set -v  # prints each statement here, including comments

#=> ClamAV 0 empty sock file
# when freshclam triggered warning "Clamd was NOT notified"
sudo touch /run/clamav/clamd.ctl
sudo chown clamav:clamav /run/clamav/clamd.ctl
sudo freshclam

#=> ClamAV 1 freshclam daemon 0 enable
sudo systemctl enable clamav-freshclam --now
sudo systemctl status clamav-freshclam

# #=> ClamAV 1 freshclam daemon 1 stop
# sudo systemctl stop clamav-freshclam.service

#=> ClamAV 2 test
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
echo "- should've seen  \"stdin: Eicar-Test-Signature FOUND\""

