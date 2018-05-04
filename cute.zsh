autoload -Uz colors
colors

DEFAULT="|˘•ω•˘ )"
FAULT="|˘TωT˘ )"

COLOR_DEFAULT="green"
COLOR_FAULT="red"

if [ ${UID} -eq 0 ]; then
  PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
else
  PROMPT="$fg_bold[white]%k%K{%(?,${COLOR_DEFAULT},${COLOR_FAULT})}%(?,${DEFAULT},${FAULT}) %k%K{black} %c %f%{$reset_color%}%k%{$reset_color%}❯"
fi

export PROMPT=$PROMPT"${vcs_info_msg_0_} "
