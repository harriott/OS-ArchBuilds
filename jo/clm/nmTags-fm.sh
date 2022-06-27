# !/bin/bash
# vim: set et tw=0:

# reset my notmuch tags
# ---------------------

# check the effects with  notmuch dump
# clear all +fm tags with  notmuch tag -fm -- "*"

notmuch tag +fm -- 'folder:/fm\/.*/ and not tag:fm' # add fm tags to all
notmuch tag -inbox -- 'folder:/fm\/[^I]/ and tag:inbox' # remove unneeded inbox tags

# fm/Archive:
notmuch tag +archive -- folder:fm/Archive and not tag:archive

# fm/Deauram:
notmuch tag +deauram -- folder:fm/Deauram and not tag:deauram

# fm/Friends:
notmuch tag +friends -- folder:fm/Friends and not tag:friends

# fm/Waiting:
notmuch tag +waiting -- folder:fm/Waiting and not tag:waiting

# fm/Work:
notmuch tag -archive -- folder:fm/Work and tag:archive
notmuch tag +work -- folder:fm/Work and not tag:work

