#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

# reject or drop a IP address from the drop zone
firewall-cmd --zone=drop --add-rich-rule='rule family="ipv4" source address="8.8.8.8" reject'
