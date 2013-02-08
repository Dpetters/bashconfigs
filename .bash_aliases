alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'

alias packages-providing='/usr/lib/command-not-found --no-failure-msg'

if [ -f ~/.bash_aliases_local ]; then
  . ~/.bash_aliases_local
fi
