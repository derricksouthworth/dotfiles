# Customize prompt with omp
eval  "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# ----------------------------
# Aliases
# ----------------------------
alias ld='eza -lD --icons=always'						# ld - lists only directories (no files)
alias lf='eza -lF --color=always --icons=always | grep -v /'			# lf - lists only files (no directories)
alias lh='eza -dl .* --icons=always --group-directories-first'			# lh - lists only hidden files (no directories)
alias ll='eza -al --icons=always --group-directories-first'			# ll - lists everything with directories first
alias ls='eza -alF --color=always --icons=always --sort=size | grep -v /'	# ls - lists only files sorted by size
alias lt='eza -a --tree --level=1 --icons=always'				# lt - lists everything sorted by time updated

export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init --cmd cd zsh)"

plugins=(zsh-autosuggestions)
export FPATH="$HOME/eza/completions/zsh:$FPATH"
