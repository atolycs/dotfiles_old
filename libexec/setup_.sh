#!/usr/bin/env bash

has() {
    type $1 >> /dev/null 2>&1
}

do_make() {

}

do_help() {
    echo "usage: $(basename ${0}) [mode] [options]"
}

main(){
    local TO_INSTALL="${HOME}/dotfiles"
    local MODE=""
    local INSTALL_BREW
    local selected_shell

    while (( $# > 0))
    do
    case $1 in
        -d|--dotfiles=*)
             if [[ "$1" =~ ^--dotfiles= ]];then
                 TO_INSTALL=$(echo $1 | sed -e 's/^--dotfiles=//')
             else
                 TO_INSTALL="$2"
                 shift;
             fi
            ;;
        -h|--help)
            do_help
            exit 0;;
        -b|--brew)
            INSTALL_BREW=1;;

	-s|--shell=*)
	    if [[ "$1" =~ ^--shell= ]];then
		 selected_shell=$(echo $1 | sed -e 's/^--shell=//')
	    else
		 selected_shell="$2"
		 shift
            fi
		 ;;
        -*)
            echo "unkown_option: $1"
            do_help
            exit 0;;

        *)
            MODE="$1";;
        esac
        shift
    done

    case $MODE in
        install) 
		[[ -n ${INSTALL_BREW} ]] && do_brewinstall
	        do_dotinstall;;
        update)
		echo "update mode";;
        *) do_help;;
    esac
}

main $@

exit 0

