autoload -Uz promptinit
promptinit
PROMPT="%{$fg[blue]%}%n%{$reset_color%}@%{$fg[white]%}%m %{$fg_no_bold[yellow]%}%1~ '\$vcs_info_msg_0_' %{$reset_color%}%# "
