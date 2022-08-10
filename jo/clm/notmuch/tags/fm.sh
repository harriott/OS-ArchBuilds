# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check:
# notmuch dump
# notmuch search tag:cz | wc -l

# clear tags:
# notmuch tag -fm -- "*"

notmuch tag +fm -- 'folder:/fm\/.*/ and not tag:fm' # add fm tags to all
notmuch tag -inbox -- 'folder:/fm\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# individual folder tags:
notmuch tag +archive -- folder:fm/Archive and not tag:archive
notmuch tag +deauram -- folder:fm/Deauram and not tag:deauram
notmuch tag +draft -- folder:fm/Drafts and not tag:draft
notmuch tag +friends -- folder:fm/Friends and not tag:friends
notmuch tag +junk -- 'folder:"fm/Junk Mail" and not tag:junk'
notmuch tag +sent -- 'folder:"fm/Sent Items" and not tag:sent'
notmuch tag +trash -- folder:fm/Trash and not tag:trash
notmuch tag +waiting -- folder:fm/Waiting and not tag:waiting
notmuch tag +work -- folder:fm/Work and not tag:work

