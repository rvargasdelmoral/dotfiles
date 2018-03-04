export PATH=$PATH:/usr/local/mysql/bin

$ALIAS
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color"
alias allprivs="sudo chmod -R 777 ."
alias schemaupdate="php bin/console doctrine:schema:update"
alias cacheclear="php bin/console cache:clear"
alias ll="ls -ltrhs"
alias la="ls -ltrahs"


if [ -x /usr/bin/dircolors ]; then
	alias ls='ls --color'
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;} 

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/mysql/bin:/Users/$USER/.vimpkg/bin

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
