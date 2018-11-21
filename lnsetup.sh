#!/bin/bash

dotfiles_dir="$HOME/dotfiles"
share_conf_dir="share"

cd ~
ln -sfn $dotfiles_dir/$share_conf_dir/vim/.vimrc
ln -sfn $dotfiles_dir/$share_conf_dir/git/.gitconfig
ln -sfn $dotfiles_dir/$share_conf_dir/xmodmap/.Xmodmap
#ln -sfn $dotfiles_dir/$share_conf_dir/fonts

cd ~/.config/fish
ln -sfn $dotfiles_dir/$share_conf_dir/fish/config.fish

cd ~/.config/fish/functions
ln -sfn $dotfiles_dir/${share_conf_dir}/fish/functions/peco_select_history.fish
