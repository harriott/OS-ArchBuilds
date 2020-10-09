# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# notmuch search tag:czj | wc -l
# notmuch tag -czj -- "*"

notmuch tag -inbox -- 'folder:/cz\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +cz -- 'folder:/cz\/.*/ and not tag:cz' # add cz tags to all

# cz/Archive:
notmuch tag +archive -- folder:cz/Archive and not tag:archive

# cz/Waiting:
notmuch tag +waiting -- folder:cz/Waiting and not tag:waiting

