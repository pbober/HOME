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
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\\$ '

# Erlang release activation
. /opt/erlang/r15b03/activate

# Home bin directory
export PATH=/home/pbober/bin:$PATH

