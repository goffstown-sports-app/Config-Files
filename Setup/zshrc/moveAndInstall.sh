#!/bin/bash
# This script will download all oh-my-zsh packages and move the .zshrc file to the one at root
# This script assumes that this Config-Files repo is in the ~/Documents/Github folder

# Installing Packages
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Moving .zshrc
rm ~/.zshrc
cp ~/Documents/Github/Config-Files/Setup/zshrc/.zshrc ~/.zshrc
