# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# clear all +czp tags with  notmuch tag -czp -- "*"

notmuch tag -inbox -- 'folder:/czp\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +czp -- 'folder:/czp\/.*/ and not tag:czp' # add czp tags to all

# czp/Archive:
notmuch tag +archive -- folder:czp/Archive and not tag:archive

# czp/Waiting:
notmuch tag +waiting -- folder:czp/Waiting and not tag:waiting

