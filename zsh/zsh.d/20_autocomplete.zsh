fpath=(
   ${ZDOTDIR}/completion
   ${BREW_COMPLETION}
   $fpath
)

if [ -v ASDF_DIR ];then
   fpath=(
	${ASDF_DIR}/completions
	$fpath
   ) 
fi
	

compinit -i
setopt menu_complete
zstyle ':completion:*' menu select=2
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _history
zstyle ':completion:*:messages' format "%F{yellow}%d%f"
zstyle ':completion:*:warnings' format "%F{red}'No matches for:%F{yellow} %d%f"
zstyle ':completion:*:descriptions' format "%F{yellow}completing %B%d%b%f"
zstyle ':completion:*:corrections' format "%F{yellow}%B%d %F{red}(errors: %e)%b%f"
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:sudo:*' command-path $path
zstyle ":completion:*:commands" rehash 1
setopt completealiases
bindkey "^[[Z" reverse-menu-complete
