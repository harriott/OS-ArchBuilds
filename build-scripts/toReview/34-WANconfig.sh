#!/bin/bash
# vim: fdl=1:

# bash <this_script>

set -ev
trap read debug  # puts a read request after each executable line

#=> systemd-resolved
sudo systemctl enable systemd-resolved.service --now
systemctl status systemd-resolved.service

