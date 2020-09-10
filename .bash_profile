commandA() {
  if [ "$BASH_COMMAND" != commandB ]; then
    command_flag=1
  fi
  return 0
}
commandB() {
  if [ ! "$command_flag" ]; then
    clear
  fi
  command_flag=
}
trap commandA debug
PROMPT_COMMAND=commandB
