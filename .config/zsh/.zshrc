# ---------------------------------------------------------------------------------------------------------------------
# ZSH RESOURCE CONFIGURATION
#
# This file will be sourced by all interactive shells (most commonly the ones
# you type in). This is where plugins, themes and the like are defined.
# ---------------------------------------------------------------------------------------------------------------------

# Command Completion
mkdir -p --mode=700 "$XDG_CACHE_HOME/zsh"
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Basic shorthands: l + a for hidden files, l for detail view, t for tree view.
alias l='exa'
alias la='l -a'
alias ll='l -l --group-directories-first --time-style=long-iso'
alias lla='ll -a'
alias lt='ll -T -I ".git|node_modules"'
alias lta='lt -a'
alias lass='$HOME/./looking-glass-client -F'

# Some color overrides.
export EXA_COLORS="da=0"

# History
HISTFILE="$XDG_CACHE_HOME/zsh/zsh_history"
HISTSIZE=50000
SAVEHIST=10000


eval "$(starship init zsh)"
