set -x TZ Asia/Tokyo
set -x PERL_BADLANG 0
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes

# set -x PATH /usr/local/bin $PATH

set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH


function fish_prompt
  eval $GOPATH/bin/powerline-go -error $status -shell bare
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

set -x PATH /usr/local/opt/mysql@5.7/bin $PATH
set -x DYLD_LIBRARY_PATH /usr/local/opt/mysql@5.7 $DYLD_LIBRARY_PATH
set -x PATH /usr/local/opt/libxml2/bin $PATH

alias mysql5.7="/usr/local/opt/mysql@5.7/bin/mysql.server"
alias mymongod="sudo mongod --fork --dbpath /usr/local/var/mongodb --logpath /usr/local/var/log/mongodb/mongo.log"
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
