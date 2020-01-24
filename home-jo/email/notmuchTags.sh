# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump

# gmx/Archives:
notmuch tag +archive -- folder:gmx/Archives and not tag:archive
notmuch tag +gmx -- folder:gmx/Archives and not tag:gmx
notmuch tag -inbox -- folder:gmx/Archives and tag:inbox
notmuch tag -unread -- folder:gmx/Archives and tag:unread

# gmx/Drafts:
notmuch tag +draft -- folder:gmx/Drafts and not tag:draft
notmuch tag +gmx -- folder:gmx/Drafts and not tag:gmx
notmuch tag -inbox -- folder:gmx/Drafts and tag:inbox
notmuch tag -unread -- folder:gmx/Drafts and tag:unread

# gmx/INBOX:
notmuch tag +gmx -- folder:gmx/INBOX and not tag:gmx

# gmx/Sent:
notmuch tag +gmx -- folder:gmx/Sent and not tag:gmx
notmuch tag -fm -- folder:gmx/Sent and tag:fm
notmuch tag -inbox -- folder:gmx/Sent and tag:inbox
notmuch tag +sent -- folder:gmx/Sent and not tag:sent

# gmx/Waiting:
notmuch tag +gmx -- folder:gmx/Waiting and not tag:gmx
notmuch tag -inbox -- folder:gmx/Waiting and tag:inbox
notmuch tag -unread -- folder:gmx/Waiting and tag:unread
notmuch tag +waiting -- folder:gmx/Waiting and not tag:waiting

# clear all +live tags with  notmuch tag -live -- "*"

# live/Archive:
notmuch tag +archive -- folder:live/Archive and not tag:archive
notmuch tag +live -- folder:live/Archive and not tag:live
notmuch tag -inbox -- folder:live/Archive and tag:inbox
notmuch tag -unread -- folder:live/Archive and tag:unread

# live/LPD:
notmuch tag +lpd -- folder:live/LPD and not tag:lpd
notmuch tag +live -- folder:live/LPD and not tag:live
notmuch tag -inbox -- folder:live/LPD and tag:inbox
notmuch tag -unread -- folder:live/LPD and tag:unread

# live/Work:
notmuch tag +work -- folder:live/Work and not tag:work
notmuch tag +live -- folder:live/Work and not tag:live
notmuch tag -archive -- folder:live/Work and tag:archive
notmuch tag -inbox -- folder:live/Work and tag:inbox
notmuch tag -unread -- folder:live/Work and tag:unread

