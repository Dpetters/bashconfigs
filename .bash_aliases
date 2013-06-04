alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'

alias packages-providing='/usr/lib/command-not-found --no-failure-msg'

alias checkstyle='java -jar $APAC_HOME/tools/checkstyle/checkstyle-5.6-all.jar -c $APAC_HOME/tools/checkstyle/droidsafe_checks.xml $1'

if [ -f ~/.bash_aliases_local ]; then
  . ~/.bash_aliases_local
fi

alias compressrepo='git reflog expire --expire=1.minute refs/heads/master;git fsck --unreachable;git prune;git gc'

