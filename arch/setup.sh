#!/bin/bash

cd ~

###############
# git setting #
###############
# git install
# dotfiles get
dofilesurl=''
cd ~
git clone $dotfilesurl dotfiles

###############
# vim setting #
###############
# vim install
sudo pacman -S vim # Arch linux commnad

####################
# Terminal setting #
####################
# guake install
sudo pacman -S guake # Arch linux command

######################
# fish shell setting #
######################
# fish shell install
sudo pacman -S fish # Arch linux command
# fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
# fisherman plugin install
fisher oh-my-fish/plugin-balias
fisher oh-my-fish/theme-bira

#################
# Fcitx setting #
#################
# Fcitx install
sudo pacman -S fcitx-im fcitx-mozc
cd ~
ln -s ~/dotfiles/arch/fcitx/.xprofile

################
# tmux setting #
################
# tmux dep install
# tmux install

###############
# tig setting #
###############
# dep on japanese character view
sudo apt install libncursesw5-dev
# tig install
git clone https://github.com/jonas/tig.git ~/Downloads/tig
cd ~/Downloads/tig
version=`git tag | sort -V | tail -n 1`
git checkout -b $version refs/tags/$version
./autogen.sh
./configure
make
sudo make install

##################
# docker setting #
##################
# docker ce install
ubuntu_code_name=bionic
sudo apt install apt-transport-https ca-certificates software-properties-common
curl -fsSl https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository (echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu "$ubuntu_code_name" stable")
sudo apt update
sudo apt install docker-ce
# docker compose install
sudo curl -L (echo "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-"(uname -s)"-"(uname -m)) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

################
# peco setting #
################
# peco install
pecourl=" https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz"
cd ~/Downloads/
curl -L $pecourl -O peco.tar.gz
tar xvf peco.tar.gz
sudo cp ./peco/peco /usr/local/bin/peco
sudo chmod +x /usr/local/bin/peco
fisher oh-my-fish/plugin-peco

###############
# ghq setting #
###############
# ghq install
ghqurl="https://github.com/motemen/ghq/releases/download/v0.8.0/ghq_linux_amd64.zip"
cd ~/Downloads
curl -L $ghqurl -O ghq.zip
unzip -d ghq ghq.zip
sudo cp ./ghq/ghq /usr/local/bin/ghq
sudo chmod +x /usr/local/bin/ghq
fisher yoshiori/fish-peco_select_ghq_repository

###################
# Xmodmap setting #
###################
# simbolic link to .Xmodmap
cd ~
ls -s ~/dotfiles/xmodmap/.Xmodmap


source ~/.config/fish/config.fish
