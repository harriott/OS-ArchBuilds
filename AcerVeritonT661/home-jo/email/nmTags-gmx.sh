# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

notmuch tag +gmx -- 'folder:/gmx\/.*/ and not tag:gmx' # add gmx tags to all
notmuch tag -inbox -- 'folder:/gmx\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# gmx/Archives:
notmuch tag +archive -- folder:gmx/Archives and not tag:archive

# gmx/Drafts:
notmuch tag +draft -- folder:gmx/Drafts and not tag:draft

# gmx/Sent:
notmuch tag -fm -- folder:gmx/Sent and tag:fm
notmuch tag +sent -- folder:gmx/Sent and not tag:sent

# gmx/Waiting:
notmuch tag +waiting -- folder:gmx/Waiting and not tag:waiting

