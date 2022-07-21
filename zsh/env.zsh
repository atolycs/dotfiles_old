export ZDOTDIR=$(cd "$(dirname "$(realpath ${BASH_SOURCE:-${(%):-%N}})")" && pwd)
source ${ZDOTDIR}/zshrc
