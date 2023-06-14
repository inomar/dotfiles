set -x LANG ja_JP.UTF-8 
#set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.anyenv/bin $PATH

# rbenv
set -x RBENV_ROOT "$HOME/.anyenv/envs/rbenv"
set -x PATH $PATH "$RBENV_ROOT/bin"

set -gx PATH "$RBENV_ROOT/shims" $PATH
set -gx RBENV_SHELL fish
source "$RBENV_ROOT/libexec/../completions/rbenv.fish"
command rbenv rehash 2>/dev/null
function rbenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (rbenv "sh-$command" $argv|psub)
  case '*'
    command rbenv "$command" $argv
  end
end

# ndenv
#set -x NDENV_ROOT "$HOME/.anyenv/envs/ndenv"
#set -x PATH $PATH "$NDENV_ROOT/bin"

#set -gx PATH "$NDENV_ROOT/shims" $PATH
#set -gx NDENV_SHELL fish
#command ndenv rehash 2>/dev/null
#function ndenv
#  set command $argv[1]
#  set -e argv[1]

#  switch "$command"
#  case rehash shell
#    eval (ndenv sh-"$command" $argv|psub)
#  case '*'
#    command ndenv "$command" $argv
#  end
#end

# pyenv
# set -x PYENV_ROOT "/usr/local/bin/pyenv"
# set -x PATH $PATH "$PYENV_ROOT/bin"
# set -gx PATH "$PYENV_ROOT/shims" $PATH
# set -gx PYENV_SHELL fish

source (pyenv init - | psub)
