export EDITOR="nvim"
export VISUAL="$EDITOR"
export GUI_EDITOR="$EDITOR"
export BROWSER="firefox"
export TERMINAL="urxvt"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"

if test -f "$HOME/.config/nnn/config"; then
	source "$HOME/.config/nnn/config"
fi

