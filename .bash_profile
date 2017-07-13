if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# nobebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# qt
export PATH=~/Qt5.5.1/5.5/clang_64/bin:$PATH

# alias
## chrome canary
alias chrome-c='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
