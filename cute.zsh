autoload -Uz colors && colors

DEFAULT="|˘•ω•˘ )"
FAULT="|˘TωT˘ )"

COLOR_DEFAULT="green"
COLOR_FAULT="red"

function update_emo() { 
  local exit_status=$?
  EMO=${DEFAULT}
  COLOR=${COLOR_DEFAULT}
  if [ ${exit_status} != 0 ]; then
    EMO=${FAULT}
    COLOR=${COLOR_FAULT}
  fi
  PROMPT='%{$fg_bold[white]%}%{$bg[${COLOR}]%}${EMO} %{$bg[black]%} %c %{$reset_color%}%{$reset_color%}❯ '
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd update_emo

