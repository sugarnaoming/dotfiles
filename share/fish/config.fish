balias g 'git'
balias docker 'sudo docker'
balias docker-nosu 'docker'
balias docker-compose 'sudo docker-compose'
balias docker-compose-nosu 'docker-compose'
alias ls 'ls -aF --color=auto'
alias tig 'tig --all --date-order'
alias refish 'source ~/.config/fish/config.fish'
alias ag 'ag --hidden'
alias gf 'git-foresta --all --style=10 | less -RSX'

function fish_user_key_bindings
  bind \er 'peco_select_history (commandline -b)'
  bind \eg peco_select_ghq_repository
end

set -x NDENV_ROOT $HOME/.ghq/github.com/riywo/ndenv
set -x PATH $NDENV_ROOT/bin $PATH

set -x PATH $HOME/bin $PATH
