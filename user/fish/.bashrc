#!/bin/bash
# Some apps use bash to exec commands
# In order to let it have correct paths ect we source our .profile

# ~ does not work, so we use $HOME instead.
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -f "$HOME/.cache/wal/colors-tty.sh" ]] && source "$HOME/.cache/wal/colors-tty.sh"

