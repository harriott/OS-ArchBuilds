# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

notmuch tag -inbox -- 'folder:/tj\/[^I]/ and tag:inbox' # remove unneeded inbox tags
notmuch tag +tj -- 'folder:/tj\/.*/ and not tag:tj' # add tj tags to all

# individual folder tags:
notmuch tag +archive -- folder:tj/Archives and not tag:archive
notmuch tag +bin -- 'folder:"tj/[Google Mail].Bin" and not tag:bin'
notmuch tag +draft -- 'folder:"tj/[Google Mail].Drafts" and not tag:draft'
notmuch tag +lpd -- folder:live/LPD and not tag:lpd
notmuch tag +sent -- 'folder:"tj/[Google Mail].Sent Mail" and not tag:sent'
notmuch tag +spam -- 'folder:"tj/[Google Mail].Spam" and not tag:spam'
notmuch tag +waiting -- folder:tj/Waiting and not tag:waiting

