# SET ENV VARIABLES
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/X11/bin
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:~/bin
export PS1="\[\033[33;1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#Display ruby version with rvm.
PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"

export EDITOR='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -w'

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# ALIASES
alias ls='ls -aGFl'
alias lm='ls | more'

alias cd..='cd ..'
alias be='bundle exec'

alias push='git push origin master'
alias pull='git pull --rebase origin master'
alias master='git checkout master'
alias gmm='git merge master'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gaa='git add -A'
alias gs="git status"
alias gb="git branch"
alias gh="git hist"

alias code='pushd ~/Dropbox/Code'
alias cp='cp -i'
alias e='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl $1'
alias e.='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl .'
alias ebp='e ~/.bash_profile'
alias reload='source ~/.bash_profile'

alias jn='jasmine-node --color --verbose --forceexit'
alias exercise='cd ~/Dropbox/Code/exercism'

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

##
# Your previous /Users/benlewis/.bash_profile file was backed up as /Users/benlewis/.bash_profile.macports-saved_2013-11-26_at_11:11:50
##

# MacPorts Installer addition on 2013-11-26_at_11:11:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

