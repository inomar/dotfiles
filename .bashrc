if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# nobebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH=/usr/local/bin:/usr/bin

