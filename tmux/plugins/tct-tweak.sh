#!/bin/bash
# vim: set et tw=0:

echo "${tpf3b} - tweaking${tpfn}"
# my preferred entry:
sed -i 's/x S/x e/' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux

# conflicts with  tmux-resurrect:
sed -i '/C-s/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux

# selections aren't visible:
sed -i '/k S/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/Y/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux

# not useful for me:
sed -i '/Q/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux
sed -i '/C-q/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux

# only URLs qre well matched:
sed -i '/n-match-0-1/ s/^/# /' $tmx/Plugins/tmux-copy-toolkit/copytk.tmux

