# use Neovim
alias vim='nvim'

# ##################
# COMMON COMMANDS
# ##################

# use lsd instead of vanilla ls
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'
# Changing directory using fzf
alias fd='cd $(find * -type d | fzf)'
# Projects directory
alias p='cd ~/Projects/'

# ##################
# GIT
# ##################

alias gls='git worktree list'
alias gA='git add .'
alias ga='git add'
alias gc='git commit -S -m'
alias gs='git status'
alias gp='git push origin $(git branch --show-current)'
alias gpf='git push -f origin $(git branch --show-current)'
alias gbd='git branch -d'
alias gbdf='git branch -D'
alias gr='git rebase origin/master'
alias grc='git rebase --continue'
alias gm='git merge'
alias gmc='git merge --continue'
alias gf='git fetch'
alias gwa='git worktree add'
alias gwd='git worktree remove'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcp='git cherry-pick -S'

# ##################
# TMUX
# ##################

alias tma='tmux attach -t'
alias tmn='tmux new -s'
alias tls='tmux ls'

# ##################
# Hardware Settings
# ##################
alias rotate='~/.config/scripts/rotate.sh'
