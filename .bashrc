# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Aliases
alias ll='ls -l'
alias la='ls -al'
alias l='ls -a'

# Customize bash prompt: colors and git branch
PS1='\e[0;36m\t\e[m \u \e[1;34m\w\e[0;35m$(__git_ps1 " (%s)")\e[m\$ '

# erlang release (kerl)
ERLANG_RELEASE="r15b03"
source /opt/erlang/$ERLANG_RELEASE/activate

# Home bin directory
export PATH=/home/pbober/bin:$PATH

