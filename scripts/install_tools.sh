#!/bin/bash

add-apt-repository universe

apt-get update

for package in neovim tmux golang-go xclip \
	zsh python3-pip taskwarrior syncthing \
	npm
do 

apt-get install -qq $package

done

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
