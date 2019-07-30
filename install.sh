#!/bin/bash

####################
# Set-up
####################
# Let's make sure we have git installed before we begin
sudo pacman -Syu git curl

# Install yay, for easier pacman/AUR management
sudo pacman -Syu yay

####################
# Fonts
####################
# Fira Code: monospaced font with programming ligatures
yay -Syu otf-fira-code

####################
# Python + pip
####################
yay -Syu pip

####################
# Vim
####################
# Install neovim, and replace vim with nvim
yay -S neovim python2-neovim python-neovim
yay -S neovim-drop-in

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create vim scratch directories
mkdir -p ~/.local/share/nvim/plugged
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/tmp

####################
# Tmux
####################

sudo pip install powerline-status
yay -S tmux

####################
# SCM breeze
####################
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze

####################
# Node
####################
yay -S nodejs npm # Needed for vim-prettier

####################
# Ruby
####################
yay -S ruby # SCM breeze works better with Ruby installed
yay -S rbenv rbenv-binstubs ruby-build
rbenv install 2.4.2

####################
# Zsh
####################
yay -S zsh
yay -S oh-my-zsh-git
yay -S antigen-git
sudo git clone https://github.com/romkatv/powerlevel10k.git /usr/share/oh-my-zsh/custom/themes/powerlevel10k
touch ~/.zsh_local

####################
# Autojump
####################
yay -S autojump

####################
# thefuck
####################
yay -S thefuck

####################
# tmux
####################
yay -S tmux tmuxinator

####################
# Symlinks
####################
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/scm_breeze/git.scmbrc ~/.git.scmbrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_functions ~/.zsh_functions
ln -s ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh
touch ~/.zsh_local

echo "All done!"
echo "Remember to set your terminal font to Fira Code"
echo "Remember to check the first line of tmux.conf - it should be set to"
echo "/usr/lib/python3.7/site-packages/"
show powerline-status | grep Location | sed 's/Location: //g'
