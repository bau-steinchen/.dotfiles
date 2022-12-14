#!/bin/sh

# change owner of .ohmyzsh to user
cd ~/.oh-my-zsh
if [ -n "$(find . -user "$USER" -print -prune -o -prune)" ]; then
  echo "The ~/.oh-my-zsh directory is already owned by $USER."
else
    echo "change folder .oh-my-zsh/ to $USER!"
    sudo chown -R $USER .oh-my-zsh
fi
cd ~/.dotfiles

# backup
mkdir ~/dotfiles_backup 
mv ~/.bash_profile ~/.gitconfig ~/.oh-my-zsh/custom/themes/* ~/.zshrc ~/dotfiles_backup

# make symlinks
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zshrc ~/.zshrc

# adding theme
ln -s ~/.dotfiles/themes/* ~/.oh-my-zsh/custom/themes/