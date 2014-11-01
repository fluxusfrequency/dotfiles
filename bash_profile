# SET ENV VARIABLES
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/X11/bin
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:~/bin
export PS1="\[\033[33;1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR='/usr/local/bin/mvim'

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# ALIASES
alias ls='ls -aGFl'
alias lm='ls | more'

alias cd..='cd ..'
alias be='bundle exec'

alias push='git push origin master'
alias pull='git pull'
alias master='git checkout master'
alias gmm='git merge master'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gcm='git commit -m'
alias gaa='git add -A'
alias gs="git status"
alias gb="git branch"
alias gh="git hist"

alias code='cd ~/code'
alias cp='cp -i'
alias e='mvim $1'
alias e.='e .'
alias ebp='e ~/.bash_profile'
alias reload='source ~/.bash_profile'

alias jn='jasmine-node --color --verbose --forceexit'
alias exercise='cd ~/code/exercism'

# Source git tab completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Old command line without parse git branch
#export PS1="\[\033[33;1m\]\W\[\033[m\]\[\033[32m\]\$ "
export BASTION_USER="blewis"

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
