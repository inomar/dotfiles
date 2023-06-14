# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
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
export PATH="/usr/local/sbin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/inomar14/google-cloud-sdk/path.bash.inc' ]; then . '/Users/inomar14/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/inomar14/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/inomar14/google-cloud-sdk/completion.bash.inc'; fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
