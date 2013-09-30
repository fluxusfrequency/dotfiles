# SET ENV VARIABLES
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/X11/bin
export PS1="\[\033[33;1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#Display ruby version with rvm.
PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"

export EDITOR='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -w'

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# ALIASES
alias ls='ls -aGFh'
alias cd..='cd ..'
alias be='bundle exec'
alias berl='bundle exec rails'
alias ber='bundle exec rake'

alias ga='git add'
alias gaa='git add --all .'
alias gcm='git commit -m'
alias gp='git push'
alias gs='git status'
alias push='git push origin master'
alias pull='git pull --rebase origin master'
alias master='git checkout master'
alias gcb='git checkout -b'
alias gc='git checkout'
alias gh='git hist'
alias gb='git branch'
alias gm='git merge'
alias gmm='git merge master'

alias go='pushd ~/dropbox/code'
alias cp='cp -i'
alias mv='cp -i'
alias e='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl $1'
alias e.='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl .'
alias er='pushd ~/dropbox/code/event_reporter'
alias ebp='e ~/.bash_profile'
alias reload='source ~/.bash_profile'
alias run='ruby bin/run_reporter.rb'

# Source git tab completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Old command line without parse git branch
#export PS1="\[\033[33;1m\]\W\[\033[m\]\[\033[32m\]\$ "
