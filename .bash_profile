if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.bash_profile_local ]; then
  . ~/.bash_profile_local
fi

# OPAM configuration
. /home/dpetters/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dpetters/.sdkman"
[[ -s "/Users/dpetters/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dpetters/.sdkman/bin/sdkman-init.sh"
