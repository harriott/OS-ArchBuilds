# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# notmuch search tag:parl | wc -l
# notmuch tag -parl -- "*"

notmuch tag -inbox -- 'folder:/parl\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +parl -- 'folder:/parl\/.*/ and not tag:parl' # add parl tags to all

# parl/Archive:
notmuch tag +archive -- folder:parl/Archive and not tag:archive

