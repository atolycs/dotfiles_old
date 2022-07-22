export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt EXTENDED_HISTORY
setopt share_history
setopt append_history
zstyle ":completion:*:commands" rehash 1
