alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'
alias buildtags='source ~/.buildtags'

function show() { git show --pretty='format:' --name-only $1 | grep -vE '^[0-9a-f]{40} ' | sort | uniq;}
export VISUAL=vim
export EDITOR=vim

source ~/.bash_profile.bk
