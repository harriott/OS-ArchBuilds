# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# clearing:
#  notmuch tag -archive -sent -- tag:gmail
#  notmuch tag -trohib -- "*"
#  notmuch tag -lpd -- tag:gmail

notmuch tag +troh -- 'folder:/troh\/.*/ and not tag:troh' # add troh tags to all
notmuch tag -inbox -- 'folder:/troh\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# individual folder tags:
notmuch tag +archive -- folder:troh/Archives and not tag:archive
notmuch tag +bin -- 'folder:"troh/[Google Mail].Bin" and not tag:bin'
notmuch tag +draft -- 'folder:"troh/[Google Mail].Drafts" and not tag:draft'
notmuch tag +sent -- 'folder:"troh/[Google Mail].Sent Mail" and not tag:sent'
notmuch tag +spam -- 'folder:"troh/[Google Mail].Spam" and not tag:spam'
notmuch tag +waiting -- folder:troh/Waiting and not tag:waiting
notmuch tag -waiting -- tag:troh and tag:waiting and not folder:troh/Waiting

