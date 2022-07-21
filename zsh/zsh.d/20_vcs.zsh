setopt prompt_subst
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%c%u%f'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
__git_files() { _files }
precmd(){ vcs_info }
