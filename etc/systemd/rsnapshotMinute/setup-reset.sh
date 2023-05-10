#!/bin/bash

# $OSAB/etc/systemd/rsnapshotMinute/setup-reset.sh

#=> 0 setup
sudo cp $OSAB/etc/systemd/rsnapshotMinute/test.conf /etc/rsnapshot.conf
mkdir ~/rsnapshot-minuteTest/
sudo systemctl enable --now rsnapshot-test.timer

#=> 1 restart timer
sudo systemctl restart --now rsnapshot-test.timer

#=> 2 reset
sudo systemctl disable --now rsnapshot-test.timer
sudo rm -r ~/rsnapshot-minuteTest/
sudo cp $machBld/etc/rsnapshot.conf /etc/rsnapshot.conf

