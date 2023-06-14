# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
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


# added by travis gem
[ ! -s /Users/inomar14/.travis/travis.sh ] || source /Users/inomar14/.travis/travis.sh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
