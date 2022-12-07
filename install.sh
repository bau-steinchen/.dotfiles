#!/bin/sh

# change owner of .ohmyzsh to user
cd ~/.oh-my-zsh
if [ -n "$(find . -user "$username" -print -prune -o -prune)" ]; then
  echo "The current directory is owned by $username."
fi
echo "change folder .oh-my-zsh/ to $USER!"
sudo chown -R $USER .oh-my-zsh

# backup
mkdir ~/dotfiles_backup 
mv ~/.bash_profile ~/.gitconfig ~/.oh-my-zsh/custom/themes/* ~/.zshrc ~/dotfiles_backup

# clone temporary the repo for powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# make symlinks
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zshrc ~/.zshrc

# adding theme
ln -s ~/.dotfiles/themes/* ~/.oh-my-zsh/custom/themes/