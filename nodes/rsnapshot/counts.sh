#!/bin/sh
# vim: fdl=1 sw=2:

# check my rsnapshots

# bash $ABno/rsnapshot/dates.sh

sudo find $rsnapshot/.sync | wc -l
sudo find $rsnapshot/aaa.0 | wc -l
sudo find $rsnapshot/aaa.1 | wc -l

