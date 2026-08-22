# PATH
typeset -U path PATH

# Local binaries
path=(/usr/local/bin $path)

# Homebrew
HOMEBREW_PREFIX="$(brew --prefix)"

# LLVM
path=("$HOMEBREW_PREFIX/opt/llvm/bin" $path)

# SQLite
path=("$HOMEBREW_PREFIX/opt/sqlite/bin" $path)

# PostgreSQL
path=("$HOMEBREW_PREFIX/opt/postgresql@17/bin" $path)

# User binaries
path=("$HOME/bin" $path)

# Zsh
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:plugins:nvm' lazy yes
plugins=(git nvm)
source "$ZSH/oh-my-zsh.sh"

# History
HISTSIZE=100000
SAVEHIST=$HISTSIZE
unsetopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# GPG
export GPG_TTY=$(tty)

# Starship
eval "$(starship init zsh)"

# Aliases
alias cls='clear && echo -en "\e[3J"'
alias py='python3'

# Syntax highlighting
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
