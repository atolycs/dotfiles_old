readonly PROCNAME=${0##*/}
readonly SHELLPID=$$

debug_mode=true
log() {
  local fname=${BASH_SOURCE[0]##*/}
  TIMESTAMP="$(date +"%Y-%m-%d %H:%M:%S")"
  RUN_SCRIPT="[${PROCNAME}/${SHELLPID}]"
  RUN_FILE=""
  if [ "${debug_mode}" == true ];then
    RUN_FILE="(${fname}:${BASH_LINENO[0]}:${FUNCNAME[1]})"
  fi
  LOG_LEVEL=${1}
  MESSAGE=${2}
  echo -e "${TIMESTAMP} ${RUN_SCRIPT}${RUN_FILE} ${LOG_LEVEL} ${MESSAGE}"
}


