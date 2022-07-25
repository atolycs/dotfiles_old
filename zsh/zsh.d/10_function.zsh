CUSTOM_FUNCTION_PATH=(
  ~/.local/bin
  ${CUSTOM_FUNCTION_PATH}
)

for fn_file in ${CUSTOM_FUNCTION_PATH}/*;
do
   source "$fn_file"
done

