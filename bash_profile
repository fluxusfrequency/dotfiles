# SET ENV VARIABLES
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/X11/bin
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:~/bin
export PS1="\[\033[33;1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR='/usr/local/bin/mvim -f'

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
alias gcm='git commit -m'
alias gaa='git add -A'
alias gap='git add -p'
alias gs="git status"
alias gb="git branch"
alias gh="git hist"
alias gfr="git fetch && git rebase origin/master"
alias prune='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

alias code='cd ~/Code'
alias blog='cd ~/Code/blog'
alias cp='cp -i'
alias e='mvim $1'
alias e.='e .'
alias ebp='e ~/.bash_profile'
alias reload='source ~/.bash_profile'

alias jn='jasmine-node --color --verbose --forceexit'
alias exercise='cd ~/Code/exercism'

function killRuby() {
echo "Killing these processes:"
echo "--------------------------------"
ps aux | grep ruby
echo "--------------------------------"
ps aux | grep ruby | awk '{print $2}' | xargs kill -9
}

alias killruby=killRuby

# Source git tab completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Android config
export PATH=$PATH:/usr/local/Cellar/android-sdk
export PATH=$PATH:/usr/local/Cellar/android-sdk/24.0.2/bin
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.0.2
export JAVA_HOME=/usr


export HISTCONTROL=ignoredups
export PATH="/usr/local/sbin:$PATH"
    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_CERT_PATH=/Users/benlewis/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
export BF_PLATFORM_INTERCEPT_EMAIL="blewis+localintercept@tapinfluence..com"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
