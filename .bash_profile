#Paths
export GOPATH=$HOME/code/go
export SPARK_HOME=/Users/paul.barber/libs/spark-1.6.1-bin-hadoop2.4

#Color settings
export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[33m\]\h:\[\033[0;36m\]\w\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=gxFxFxDxBxegedaBagaced
alias ls='ls -GFh'

#Git Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi



