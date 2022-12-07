#!/bin/sh

# backup
mkdir ~/dotfiles_backup 
mv ~/.bash_profile ~/.gitconfig ~/dotfiles_backup
# make symlinks
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zshrc ~/.zshrc

# adding theme
ln -s ~/.dotfiles/themes/*