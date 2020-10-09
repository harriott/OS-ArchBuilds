# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# clearing:
#  notmuch tag -archive -sent -- tag:gmail
#  notmuch tag -gmail -- "*"
#  notmuch tag -lpd -- tag:gmail

notmuch tag +trohib -- 'folder:/gmail\/.*/ and not tag:trohib' # add trohib tags to all
notmuch tag -inbox -- 'folder:/gmail\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# individual folder tags:
notmuch tag +archive -- folder:gmail/Archives and not tag:archive
notmuch tag +bin -- 'folder:"gmail/[Google Mail].Bin" and not tag:bin'
notmuch tag +draft -- 'folder:"gmail/[Google Mail].Drafts" and not tag:draft'
notmuch tag +sent -- 'folder:"gmail/[Google Mail].Sent Mail" and not tag:sent'
notmuch tag +spam -- 'folder:"gmail/[Google Mail].Spam" and not tag:spam'
notmuch tag +waiting -- folder:gmail/Waiting and not tag:waiting

