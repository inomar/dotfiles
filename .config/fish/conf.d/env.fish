set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.anyenv/bin $PATH

# ndenv
set -x NDENV_ROOT "$HOME/.anyenv/envs/ndenv"
set -x PATH $PATH "$NDENV_ROOT/bin"

set -gx PATH "$NDENV_ROOT/shims" $PATH
set -gx NDENV_SHELL fish
command ndenv rehash 2>/dev/null
function ndenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    eval (ndenv sh-"$command" $argv|psub)
  case '*'
    command ndenv "$command" $argv
  end
end
