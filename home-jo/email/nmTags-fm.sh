# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump
# clear all +fm tags with  notmuch tag -fm -- "*"

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

# fm/Work:
notmuch tag +work -- folder:fm/Work and not tag:work
notmuch tag +fm -- folder:fm/Work and not tag:fm
notmuch tag -archive -- folder:fm/Work and tag:archive
notmuch tag -inbox -- folder:fm/Work and tag:inbox
notmuch tag -unread -- folder:fm/Work and tag:unread

