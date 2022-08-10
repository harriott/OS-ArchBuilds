# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check:
# notmuch dump
# notmuch search tag:live | wc -l

# clear all +live tags with  notmuch tag -live -- "*"

notmuch tag -inbox -- 'folder:/live\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +live -- 'folder:/live\/.*/ and not tag:live' # add live tags to all

# individual folder tags:
notmuch tag +archive -- folder:live/Archive and not tag:archive
notmuch tag +deleted -- folder:live/Deleted and not tag:deleted
notmuch tag +drafts -- folder:live/Drafts and not tag:drafts
notmuch tag +junk -- folder:live/Junk and not tag:junk
notmuch tag +sent -- folder:live/Sent and not tag:sent
notmuch tag +waiting -- folder:live/Waiting and not tag:waiting

