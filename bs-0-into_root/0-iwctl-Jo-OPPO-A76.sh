#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-0-in_root/0-iwctl-Jo-OPPO-A76.sh

loadkeys fr
iwctl station wlan0 scan
iwctl station wlan0 get-networks
# HP EliteBook 840 G3's wireless button does toggle, though no change in colour
iwctl station wlan0 connect Jo-OPPO-A76

