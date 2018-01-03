#!/bin/bash

####################
# Set-up
####################
# Let's make sure we have git installed before we begin
sudo pacman -Syu git curl

# Install yaourt, for easier pacman/AUR management
sudo pacman -Syu yaourt

####################
# Fonts
####################
# Grab some patched fonts, for symbolic terminal sexiness
sudo pacman -Syu awesome-terminal-fonts

####################
# Vim
####################
# Install neovim, and replace vim with nvim
yaourt -S neovim python2-neovim python-neovim
yaourt -S neovim-drop-in

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create vim scratch directories
mkdir -p ~/.local/share/nvim/plugged
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/tmp

####################
# SCM breeze
####################
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze

####################
# Node
####################
yaourt -S nodejs npm # Needed for vim-prettier

####################
# Ruby
####################
yaourt -S ruby # SCM breeze works better with Ruby installed
yaourt -S rbenv rbenv-binstubs ruby-build
rbenv install 2.4.2

####################
# Zsh
####################
yaourt -S zsh
yaourt -S oh-my-zsh-git
yaourt -S antigen-git
sudo git clone https://github.com/bhilburn/powerlevel9k.git /usr/share/oh-my-zsh/custom/themes/powerlevel9k
touch ~/.zsh_local

####################
# Autojump
####################
yaourt -S autojump

####################
# thefuck
####################
yaourt -S thefuck

####################
# tmux
####################
yaourt -S tmux tmuxinator

####################
# Symlinks
####################
ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/scm_breeze/git.scmbrc ~/.git.scmbrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_functions ~/.zsh_functions
ln -s ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases
