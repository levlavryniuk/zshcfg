[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
plug "rkh/zsh-jj"
plug "zettlrobert/simple-prompt"
plug "zsh-users/zsh-completions"

export PATH=$PATH:~/.cargo/bin/
alias vim="nvim"
alias c='clear'
alias jn='jj new -m'

alias nvcfg='cd ~/.config/nvim && nvim'

alias cd='z'
# JJ aliases
alias jb='jj bookmark'
# Load and initialise completion system
autoload -Uz compinit
compinit
source <(COMPLETE=zsh jj)
eval "$(zoxide init zsh)"

