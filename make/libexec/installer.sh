#!/usr/bin/env bash

has() {
    type $1 >> /dev/null 2>&1
}

do_help() {
    echo "usage: $(basename ${0}) [mode] [options]"
}

do_install() {

}

main(){
    local TO_INSTALL="${HOME}/dotfiles"
    local MODE=""
    local INSTALL_BREW

    while (( $# > 0))
    do
    case $1 in
        -d|--dotfiles=*)
            if [[ "${MODE}" == "install" ]];then
                if [[ "$1" =~ ^--dotfiles= ]];then
                    TO_INSTALL=$(echo $1 | sed -e 's/^--dotfiles=//')
                else
                    TO_INSTALL="$2"
                    shift;
                fi
            elif [[ "${MODE}" != "help" ]];then
                echo "This option is only 'install' mode"
            fi
            ;;
        -h|--help)
            do_help
            exit 0;;
        -b|--brew)
            INSTALL_BREW=1
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
        install) :;;
        *) do_help;;
    esac
}

main $@

exit 0

