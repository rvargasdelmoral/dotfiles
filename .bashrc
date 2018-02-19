#Display git branch name
parse_git_branch() { 
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Programmable completition.
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Enable colors if the program is available (guess so).
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color'
    alias grep='grep --color'
fi

# Define some color constants
  RESET='\[\e[0;0m\]'
  WHITE='\[\e[0;37m\]'
 YELLOW='\[\e[0;33m\]'
   CYAN='\[\e[0;36m\]'
  GREEN='\[\e[0;32m\]'
MAGENTA='\[\e[0;35m\]'
    RED='\[\e[0;31m\]'
   BLUE='\[\e[0;34m\]'
  BLACK='\[\e[0;30m\]'
# more color constants to come... there are a f***ing lot of them.

