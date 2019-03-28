#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

touch /var/lib/clamav/clamd.sock
chown clamav:clamav /var/lib/clamav/clamd.sock
