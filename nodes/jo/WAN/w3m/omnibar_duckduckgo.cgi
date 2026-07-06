#!/usr/bin/env sh
# https://github.com/gotbletu/shownotes/blob/master/w3m_omnibar/omnibar_duckduckgo.cgi

# chmod +x $ABjo/WAN/omnibar_duckduckgo.cgi

# sed -i 's@^cgi_bin.*@cgi_bin ~/.w3m/cgi-bin:/usr/lib/w3m/cgi-bin:@g' ~/.w3m/config

# ~/.w3m/keymap:
#  keymap  sd  COMMAND "SET_OPTION dictcommand=file:///cgi-bin/omnibar_duckduckgo.cgi ; DICT_WORD"
#  keymap  sD  COMMAND "SET_OPTION dictcommand=file:///cgi-bin/omnibar_duckduckgo.cgi ; DICT_WORD_AT"

echo "w3m-control: BACK"
echo "w3m-control: TAB_GOTO https://lite.duckduckgo.com/lite/?q=$QUERY_STRING&kf=-1&kz=-1&kq=-1&kv=-1&k1=-1&kp=-2&kaf=1&kd=-1&kf=-1&kz=-1&kq=-1&kv=-1"

