# vim mode
bindkey -v
export KEYTIMEOUT=1

# The following lines were added by compinstall
autoload -Uz compinit; compinit

# bare git
alias dtf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# pnpm
alias node18="pnpm env use --global 18"
alias node16="pnpm env use --global 16"

# aliases
alias l="exa -al"
alias dust="du -d 1 -h | sort -h"
alias zj="zellij"
vii() { vi -i NONE $1; }

# plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mcfly init zsh)"

# zsh plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_SYNTAX_HIGHLIGHTERS_DIR=/usr/share/zsh-syntax-highlighting/highlighters

# pnpm
export PNPM_HOME="/home/malolan/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# rust
source "$HOME/.cargo/env"
