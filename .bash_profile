if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# pyenv

# brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# qt
export PATH=~/Qt5.5.1/5.5/clang_64/bin:$PATH

# alias
## chrome canary
alias chrome-c='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'


## cmd
alias s-til='cd ~/Develop/Private/til'
alias s-p='cd ~/Develop/Private/'

# git
alias ga='git add'
alias gch='git checkout'
alias gc='git commit'

# bundle
alias be='bundle exec'
export PATH="/usr/local/opt/icu4c/bin:$PATH"

# docker
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'
alias drmv='docker volume rm $(docker volume ls -q)'

export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"


export EDITOR="vim"
export PATH="/usr/local/opt/libiconv/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/libxslt/bin:$PATH"
