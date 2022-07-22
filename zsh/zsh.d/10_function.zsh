brew() {
   local ignore_options
   case "$1" in
      install) ignore_options="--ignore-dependencies";;
      *) :;;
   esac
   command brew $@ ${ignore_options} 
}
