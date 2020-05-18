
# my neomutt setup
This folder of configuration files may well be useful to someone else.

Setting up `mutt` with `notmuch` for the first time isn't easy, but it *is* worth it if you want to be able to quickly move in and out of huge lists of email, rapidly search in various clever ways, and you've already re-discovered the power of the Unix command line and life-changing text editors such as `vim`.

I started with help from Luke Smith. [Mutt Wizard: Command Line Email at 156% Efficiency](https://youtu.be/mPiQuWbF57M), and his [Code](https://gitlab.com/LukeSmithxyz/mutt-wizard), and of course the excellent ArchWiki, and a load of other helpful posts around the web, and over a long time, got this here setup which now allows me to move easily in and out of email accounts, quickly sort, read, write, sync and send.

- Getting my emails - I prefer `mbsync` (over `offlineimap`). You can find example configurations around the web.
- Reading my emails - I use an alias defined in my `bashrc-email` (you can find in this repository) to fire up `neomutt` and to set `notmuch` tags
    - `neomutt` is just a terminal program for reading and sorting emails. It requires a shit-load of configuration to get it working your way, but it's worth it in the end. This is the central treasure that you may be looking for. It's mildly life-changing.
    - `notmuch` provides a very quick way to tag emails to help you later find things
- Writing emails - my setup launches `neovim` in the same terminal window, which is just amazingly handy for me as I do all of my organisation and writing of stuff with variants of `vim`.
- Sending emails - I use `msmtp` of course, and now it supports `OAUTH2`!
- Searching for text in a folder, an account, or all accounts is easy, either using `notmuch` or by doing something like `~/.local/share/mail$ rg Miscov` (- `ripgrep`).

Good luck.

