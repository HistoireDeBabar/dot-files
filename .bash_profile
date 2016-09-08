#Paths
export GOPATH=$HOME/code/go
export SPARK_HOME=/Users/paul.barber/libs/spark-1.6.1-bin-hadoop2.4
export PATH=$PATH:$GOPATH/bin
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

#Color settings
export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[33m\]\\W:\[$txtcyn\]\$git_branch\\[\033[33m\]\$ \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=gxFxFxDxBxegedaBagaced
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
alias ls='ls -GFh'

#Git Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
	. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

###
# General
###
# List files and directories, styled for more info and readability
alias ll="ls -opgh"
# As above but show hidden files
alias la='ll -A'

# Find a process (usually to kill a crashed process), takes one argument: Name or partial name of process (case-insensitive)
psg() {
  ps -ax | grep -i $1 | grep -v grep
}

plist() {
  lsof -i $1 | grep LISTEN
}

###
# Trail specific
###
# Run a specific rspec test, takes one argument: Name or partial name of test file (case-insensitive)
rbtest() {
  find spec | grep -i $1 | xargs rspec
}
# Run all rspec tests
alias rbtests="rspec spec"
# Run all frontend tests
alias rubo="rubocop -R -D ."
alias rubox="rubocop -a -R -D ."
