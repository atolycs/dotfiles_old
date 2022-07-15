
BOOTSTRAP_BASE=$(dirname $(realpath $0));
. ${BOOTSTRAP_BASE}/lib/*.lib
. ${BOOTSTRAP_BASE}/lib/*.sh


#if [ -f "/.dockerenv" ];then
#fi

colors

log "this is test"
