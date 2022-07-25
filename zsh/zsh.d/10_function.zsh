CUSTOM_FUNCTION_PATH=(
  ${CUSTOM_FUNCTION_PATH}
  ${ZDOTDIR}/../fn
)

for fn_file in ${CUSTOM_FUNCTION_PATH}/*.function.zsh;
do
   source "$fn_file"
done

