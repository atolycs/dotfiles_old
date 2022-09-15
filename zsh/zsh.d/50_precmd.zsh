precmd() {
   vcs_info
   RPROMPT=":%(?.).()"
   eval "${PROMPT_COMMAND}"
}
