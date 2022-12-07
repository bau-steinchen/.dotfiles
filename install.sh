#!/bin/sh

# change owner of .ohmyzsh to user
echo "change folder .oh-my-zsh/ to $USER!"
sudo chown -R $USER .oh-my-zsh

# backup
mkdir ~/dotfiles_backup 
mv ~/.bash_profile ~/.gitconfig ~/.oh-my-zsh/custom/themes/* ~/dotfiles_backup
# make symlinks
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zshrc ~/.zshrc

# adding theme
ln -s ~/.dotfiles/themes/* ~/.oh-my-zsh/custom/themes/