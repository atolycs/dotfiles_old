_load-alias() {
  for aa in ${ZDOTDIR}/../alias/*;do
     source $aa
  done
}

_load-alias
