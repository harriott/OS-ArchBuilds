#!/bin/bash

# C* Music Player remote update of cache
# --------------------------------------

cmus-remote -C "clear"

cmus-remote -C "add /mnt/SDSSDA240G/Dropbox/CAM-fromSharon"
# cmus-remote -C "add /mnt/SDSSDA240G/Dropbox/CAMusic"

cmus-remote -C "update-cache -f"
# this doesn't always work, where a simple u from within cmus does

