#!/bin/bash
# vim: set et tw=0:

# my preferred entry:
sed -i 's/x S/x e/' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux

# conflicts with  tmux-resurrect:
sed -i '/C-s/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux

# selections aren't visible:
sed -i '/k S/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/Y/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux

# not useful for me:
sed -i '/Q/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/C-q/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux

# only URLs qre well matched:
sed -i '/n-match-0-1/ s/^/# /' $tmux/Plugins/tmux-copy-toolkit/copytk.tmux
