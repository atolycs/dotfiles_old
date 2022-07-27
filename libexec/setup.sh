#!/usr/bin/env bash

_hascmd() {
    type $1 >> /dev/null 2>&1
}

download_dotfiles() {
   local DOTFILES_REPO="https://gitlab.com/Atolycs/dotfiles.git"
   local DOT_PATH="${HOME}/dotfiles"

   if _hascmd "git";then
      git clone --recursive "${DOTFILES_REPO}" "${DOT_PATH}"
   fi
}

do_make() {
 :
}

do_help() {
    echo "usage: $(basename ${0}) [mode] [options]"
}

main(){
:
}

main $@

exit 0

