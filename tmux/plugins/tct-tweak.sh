#!/bin/bash
# vim: set et tw=0:

# bash $tmx/plugins/tct-tweak.sh
# normally sourced by  $tmx/plugins/pulls.sh

echo "${tpf3b} - tweaking${tpfn}"
# my preferred entry:
sed -i 's/x S/x e/' $tmx/plugins/tmux-copy-toolkit/copytk.tmux

# conflicts with  tmux-resurrect:
sed -i '/C-s/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux

# selections aren't visible:
sed -i '/k S/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/Y/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux

# not useful for me:
sed -i '/Q/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/C-q/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux

# only URLs qre well matched:
sed -i '/n-match-0-1/ s/^/# /' $tmx/plugins/tmux-copy-toolkit/copytk.tmux

