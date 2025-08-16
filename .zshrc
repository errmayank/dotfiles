# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Google Cloud SDK
if [ -f '/Users/mayank/google-cloud-sdk/path.zsh.inc' ]; then
  . '/Users/mayank/google-cloud-sdk/path.zsh.inc'
fi

# Alias
alias cls='clear && echo -en "\e[3J"'
alias py='python3'

# Go
export GOPATH=$HOME/go

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pnpm
export PNPM_HOME="/Users/mayank/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# SQLite
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# PostgreSQL
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# GPG
export GPG_TTY=$(tty)

# Starship
eval "$(starship init zsh)"

# pipx tools
export PATH="$PATH:/Users/mayank/.local/bin"
