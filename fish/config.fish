set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes

function fish_prompt
     powerline-shell --shell bare $status
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

