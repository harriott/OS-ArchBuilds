# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check:
# notmuch dump
# notmuch search tag:cz | wc -l

# clear tags:
# notmuch tag -cz -- "*"

notmuch tag +cz -- 'folder:/cz\/.*/ and not tag:cz' # add cz tags to all
notmuch tag -inbox -- 'folder:/cz\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# individual folder tags:
notmuch tag +archive -- folder:cz/Archives and not tag:archive
notmuch tag +bin -- 'folder:"cz/[Gmail].Bin" and not tag:bin'
notmuch tag +draft -- 'folder:"cz/[Gmail].Drafts" and not tag:draft'
notmuch tag +sent -- 'folder:"cz/[Gmail].Sent Mail" and not tag:sent'
notmuch tag +spam -- 'folder:"cz/[Gmail].Spam" and not tag:spam'
notmuch tag +waiting -- folder:cz/Waiting and not tag:waiting

