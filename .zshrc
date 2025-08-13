[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "rkh/zsh-jj"
plug "zettlrobert/simple-prompt"
plug "zsh-users/zsh-completions"

export PATH=$PATH:~/.cargo/bin/
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export FLYCTL_INSTALL="/home/levi/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

alias vim="nvim"
alias c='clear'
alias jn='jj new -m'
alias cfui='cd ~/ComfyUI && source ~/image_gen_env/bin/activate && python main.py'
alias vin='cd ~/Coding/vingen && bun run index.ts'

alias ls='exa --group-directories-first --icons'
# alias glp='git log --pretty=format:"%h - %an : %s"'

glog() {
  local commit_count=${1:-5}
  git log --color=auto --pretty=format:"%C(yellow)%h %C(cyan)- %C(reset)%an %C(magenta)(%ad)%C(reset) : %C(green)%s%C(reset)" --date="format:%b %d, %H:%M" -n "$commit_count"
}

alias zshcfg='cd ~ && nvim ~/.zshrc'
alias nvcfg='cd ~/.config/nvim && nvim'

#~~~~~~~~~~~~~~
alias gst='git status'
alias gcam='git commit -am'
alias gco='git checkout'
alias gp='git push'
alias gdf='git diff'
alias ga='git add'
#~~~~~~~~~~~~~~

# a thingy that clones a repo
clonemy() {
  if [ -z "$1" ]; then
    echo "Usage: clonemy <repository-name>"
    return 1
  fi
  local repo_name="$1"
  jj git clone "git@github.com:levlavryniuk/${repo_name}"
}

alias cd='z'
alias pi='ssh levi@192.168.1.107'
autoload -Uz compinit
compinit
source <(COMPLETE=zsh jj)
eval "$(zoxide init zsh)"

if [ -f '/home/levi/google-cloud-sdk/path.zsh.inc' ]; then . '/home/levi/google-cloud-sdk/path.zsh.inc'; fi

if [ -f '/home/levi/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/levi/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/home/levi/.bun/_bun" ] && source "/home/levi/.bun/_bun"
