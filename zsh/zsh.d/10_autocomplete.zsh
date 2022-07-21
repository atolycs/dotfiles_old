fpath=(${ZDOTDIR}/completion $fpath)
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select
#zstyle ':completion:*' rehash true
