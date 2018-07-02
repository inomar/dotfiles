function fish_prompt
     powerline-shell --shell bare $status
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end
