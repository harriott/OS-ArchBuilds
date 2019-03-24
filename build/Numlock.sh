#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

mkdir /etc/systemd/system/getty@.service.d
echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
