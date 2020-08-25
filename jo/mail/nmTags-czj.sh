# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# clear all +czj tags with  notmuch tag -czj -- "*"

notmuch tag -inbox -- 'folder:/czj\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +czj -- 'folder:/czj\/.*/ and not tag:czj' # add czj tags to all

# czj/Archive:
notmuch tag +archive -- folder:czj/Archive and not tag:archive

# czj/Waiting:
notmuch tag +waiting -- folder:czj/Waiting and not tag:waiting

