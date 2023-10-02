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


# Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
