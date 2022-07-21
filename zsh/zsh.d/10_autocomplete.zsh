fpath=(${ZDOTDIR}/completion $fpath)
compinit -i
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format "%F{yellow}%d%f"
zstyle ':completion:*:warnings' format "%F{red}'No matches for:%F{yellow} %d%f"
zstyle ':completion:*:descriptions' format "%F{yellow}completing %B%d%b%f"
zstyle ':completion:*:corrections' format "%F{yellow}%B%d %F{red}(errors: %e)%b%f"
zstyle ':completion:*:options' description 'yes'
