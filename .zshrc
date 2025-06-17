# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kunheeha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Nodenv
eval "$(nodenv init -)"
# Pyenv
export PYENV_ROOT="$HOME/.PYENV"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
# theFuck
eval $(thefuck --alias)

# OPTIONS
export EDITOR='nvim'
# Case sensitive completion
CASE_SENSITIVE='false'
# Hidden files when using fzf
#export FZF_DEFAULT_COMMAND="find \! \( -path '*/.git' -prune \) -printf '%P\n'"

# PLUGINS
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# zsh-history-substring-search keybinds
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ALIASES
source ~/.config/aliases/aliases.zsh
source ~/.config/aliases/project_dir_aliases.zsh

# FZF theme

# Rose Pine
#export FZF_DEFAULT_OPTS="
#	--color=fg:#908caa,bg:#191724,hl:#ebbcba
#	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
#	--color=border:#403d52,header:#31748f,gutter:#191724
#	--color=spinner:#f6c177,info:#9ccfd8
#	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# Rose Pine Dawn
export FZF_DEFAULT_OPTS="
	--color=fg:#797593,bg:#faf4ed,hl:#d7827e
	--color=fg+:#575279,bg+:#f2e9e1,hl+:#d7827e
	--color=border:#dfdad9,header:#286983,gutter:#faf4ed
	--color=spinner:#ea9d34,info:#56949f
	--color=pointer:#907aa9,marker:#b4637a,prompt:#797593"

# Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
