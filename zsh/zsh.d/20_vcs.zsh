setopt prompt_subst
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%c%u%f '
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --branch --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[unstaged]+='?'
  fi
}
#__git_files() { _files }
