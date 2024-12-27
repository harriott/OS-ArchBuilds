
this node `$clMail/README.md` and see also [email tools across platforms](https://harriott.github.io/email_tools_across_platforms/)

# my neomutt + notmuch setup
This folder of configuration files may well be useful to someone else.

Setting up `mutt` with `notmuch` for the first time isn't easy, but it *is* worth it if you want to be able to quickly move in and out of huge lists of email, rapidly search in various clever ways, and you've already re-discovered the power of the Unix command line and life-changing text editors such as `vim`.

I started with help from Luke Smith. [Mutt Wizard: Command Line Email at 156% Efficiency](https://youtu.be/mPiQuWbF57M), and his [Code](https://gitlab.com/LukeSmithxyz/mutt-wizard), and of course the excellent ArchWiki, and a load of other helpful posts around the web, and over a long time, got this here setup which now allows me to move easily in and out of email accounts, quickly sort, read, write, sync and send.

- **Getting my emails** - I prefer `mbsync` (over `offlineimap`). You can find example configurations around the web.
- **Reading my emails** - I use an alias defined in my `bashrc-email` (you can find in this repository) to fire up `neomutt` and to set `notmuch` tags
    - `neomutt` is just a terminal program for reading and sorting emails. It requires a shit-load of configuration to get it working your way, but it's worth it in the end. This is the central treasure that you may be looking for. It's mildly life-changing.
    - `notmuch` provides a very quick way to tag emails to help you later find things
- **Writing emails** - my setup launches `neovim` in the same terminal window, which is just amazingly handy for me as I do all of my organisation and writing of stuff with variants of `vim`.
- **Sending emails** - I use `msmtp` of course, and now it supports `OAUTH2`!
- **Searching for text** in a folder, an account, or all accounts is easy, either using `notmuch` (I've made a couple of small tools in my `bashrc-email` for pulling out the text of emails to `gVim`) or by doing something like a `ripgrep`, `~/.local/share/mail$ rg Miscov`.

# configuration
I configure access to these files in my [$AjB/bashrc-clm](https://github.com/harriott/OS-ArchBuilds/blob/master/jo/Bash/bashrc-clm) which defines aliases like this:

- `msx` = "mail sync <xAccount>" - runs `mbsync` and then updates `notmuch` tags on a local account
    - `~/.mbsyncrc` (my `$clMail/mbsyncrc-template`)
- `nmx` = `neomutt <xAccount>` for opening neomutt on a local account
- `nmse` = `notmuch search ...` for searching into all of my local accounts
    - `nmsh` = shows me the emails found by `nmse`
    - `~/.notmuch-config` (my `$clMail/notmuch/config-template`)

## msmtp
`~/.config/msmtp/config` (my `$clMail/mbsyncrc-template`)

Allows me to send emails, either directly from `neomutt` or like this:

```bash
echo "content" | nmx -s "subject" <recipientEmail> -a <attachment1> -a <attachment2> ...
```

# associated practices
I turn off conversation view for all of my accounts. I get what it does, but I dislike it, and it doesn't help in my workflow.

## Gmail
- Archiving:
    - I create a folder named "Archives" for emails that are done but worth keeping.
    - I avoid hitting the `Archive` button on Gmail's web interface because that just strips away all labels such that the email is then lost in `All Mail`.
- I had set up 2-Step Verification in my Google Accounts such that I can enable the API, then I used `msmtp` for sending Gmails (see `oauth2tool.sh`), but this can no longer be done - see
my question [How to continue using msmtp OAuth 2.0 for Gmail in mutt after oob deprecation?](https://superuser.com/q/1723180/242800).

## HTML in emails
I don't bother, as some do, trying to view HTML emails in `neovim`. So these are my workarounds:

- The vast majority of links that appear in a text version of an email in `neomutt` I can mouse-click on to open in my default browser.
- HTML-only emails, such as the newsletter of la Mairie de Paris I open in Thunderbird.

## I still use Thunderbird alongside
because it's still an excellent open-source program that allows me to:

- reply from a different account that I received an email from
- append received emails together in my reply
- easily move as many emails as I want from one account to another
- check folder settings for an account
- get ready access to accounts that take some time to setup, such as Gmail's `OAUTH2` requirement when I've setup 2-step verification
- remove attachments from an email while leaving the name of the attachment in the email - handy for having a more compact store of done emails while still being able to see what was sent with them (I wish `neomutt` had this ability)

