xmodmap ~/.Xmodmap

balias ls 'ls -aF --color=auto'
balias tig 'tig --all --date-order'
balias refish 'source ~/.config/fish/config.fish'
balias g 'git'

function fish_user_key_bindings
  bind \er 'peco_select_history (commandline -b)'
  bind \eg peco_select_ghq_repository
end
