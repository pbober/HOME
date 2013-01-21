# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Aliases
alias l="ls"
alias ll="ls -l"
alias la="ls -al"

# git branch in prompt
PS1='\e[0;33m\t\e[m \u \e[1;34m\w\e[0;35m$(__git_ps1 " (%s)")\e[m\$ '

# Erlang release activation
. /opt/erlang/r15b03/activate

# Home bin directory
export PATH=/home/pbober/bin:$PATH

