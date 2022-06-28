# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# clear all +live tags with  notmuch tag -live -- "*"

notmuch tag -inbox -- 'folder:/live\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +live -- 'folder:/live\/.*/ and not tag:live' # add live tags to all

# live/Archive:
notmuch tag +archive -- folder:live/Archive and not tag:archive

# live/Waiting:
notmuch tag +waiting -- folder:live/Waiting and not tag:waiting

