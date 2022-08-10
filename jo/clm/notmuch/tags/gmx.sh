# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check:
# notmuch dump
# notmuch search tag:gmx | wc -l

notmuch tag +gmx -- 'folder:/gmx\/.*/ and not tag:gmx' # add gmx tags to all
notmuch tag -inbox -- 'folder:/gmx\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# individual folder tags:
notmuch tag +archive -- folder:gmx/Archives and not tag:archive
notmuch tag +draft -- folder:gmx/Drafts and not tag:draft
notmuch tag +sent -- folder:gmx/Sent and not tag:sent
notmuch tag +spam -- folder:gmx/Spam and not tag:spam
notmuch tag +trash -- folder:gmx/Trash and not tag:trash
notmuch tag +waiting -- folder:gmx/Waiting and not tag:waiting

