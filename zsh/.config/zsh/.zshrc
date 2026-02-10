function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Options
setopt hist_ignore_all_dups
setopt hist_ignore_space

setopt autocd extendedglob nomatch
bindkey -v

autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files
