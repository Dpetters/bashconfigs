if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.bash_profile_local ]; then
  . ~/.bash_profile_local
fi

# OPAM configuration
. /home/dpetters/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
