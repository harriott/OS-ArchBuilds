# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# fm/Archive:
notmuch tag +archive -- folder:fm/Archive and not tag:archive
notmuch tag +fm -- folder:fm/Archive and not tag:fm
notmuch tag -inbox -- folder:fm/Archive and tag:inbox
notmuch tag -unread -- folder:fm/Archive and tag:unread

# fm/Cafezoide:
notmuch tag +cafezoide -- folder:fm/Cafezoide and not tag:cafezoide
notmuch tag +fm -- folder:fm/Cafezoide and not tag:fm
notmuch tag -inbox -- folder:fm/Cafezoide and tag:inbox
notmuch tag -unread -- folder:fm/Cafezoide and tag:unread

# fm/Deauram:
notmuch tag +deauram -- folder:fm/Deauram and not tag:deauram
notmuch tag +fm -- folder:fm/Deauram and not tag:fm
notmuch tag -inbox -- folder:fm/Deauram and tag:inbox
notmuch tag -unread -- folder:fm/Deauram and tag:unread

# fm/Friends:
notmuch tag +friends -- folder:fm/Friends and not tag:friends
notmuch tag +fm -- folder:fm/Friends and not tag:fm
notmuch tag -inbox -- folder:fm/Friends and tag:inbox
notmuch tag -unread -- folder:fm/Friends and tag:unread

# fm/INBOX:
notmuch tag +fm -- folder:fm/INBOX and not tag:fm

# fm/Sent Items:
notmuch tag +fm -- 'folder:"fm/Sent Items" and not tag:fm'
notmuch tag -inbox -- 'folder:"fm/Sent Items" and tag:inbox'
notmuch tag +sent -- 'folder:"fm/Sent Items" and not tag:sent'

# fm/Waiting:
notmuch tag +fm -- folder:fm/Waiting and not tag:fm
notmuch tag -inbox -- folder:fm/Waiting and tag:inbox
notmuch tag -unread -- folder:fm/Waiting and tag:unread
notmuch tag +waiting -- folder:fm/Waiting and not tag:waiting

# gm/Work:
notmuch tag +work -- folder:gm/Work and not tag:work
notmuch tag +gm -- folder:gm/Work and not tag:gm
notmuch tag -archive -- folder:gm/Work and tag:archive
notmuch tag -inbox -- folder:gm/Work and tag:inbox
notmuch tag -unread -- folder:gm/Work and tag:unread

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

