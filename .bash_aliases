alias packages-providing='/usr/lib/command-not-found --no-failure-msg'
alias compressrepo='git reflog expire --expire=1.minute refs/heads/master;git fsck --unreachable;git prune;git gc'
alias python=python3.7
alias python3=python3.7
alias explorer="explorer.exe"
alias chrome="\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\""
alias vs="\"/mnt/c/Program Files (x86)/Microsoft Visual Studio/2017/Enterprise/Common7/IDE/devenv.exe\""

if [ -f ~/.bash_aliases_local ]; then
  . ~/.bash_aliases_local
fi
