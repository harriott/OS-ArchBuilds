#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

# turn off -w flag in dhcpcd@.service
mkdir /etc/systemd/system/dhcpcd@.service.d
cp ../../configFiles/etc/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

