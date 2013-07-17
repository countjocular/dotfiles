export LANG=en_GB.utf8
export GDM_LANG=en_GB.utf8

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Antigen
source $HOME/dotfiles/zsh/antigen/antigen.zsh
export ANTIGEN_DEFAULT_REPO_URL=git@github.com:countjocular/oh-my-zsh.git
antigen-use oh-my-zsh
antigen-bundle git
antigen-bundle heroku
antigen-bundle command-not-found
antigen-bundle gem
antigen-bundle git-flow
antigen-bundle rails
antigen-bundle rails3
antigen-bundle rake
antigen-bundle ruby
antigen-bundle rvm
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-theme countjocular_fat
antigen-apply

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Force terminal to use 256 colors, if it can
export TERM="xterm-256color"

COMPLETION_WAITING_DOTS="true"

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Source aliases
source $HOME/.zsh_aliases

# Source functions
source $HOME/.zsh_functions

# Customize to your needs...
export PATH=/home/countjocular/.rvm/gems/ruby-1.9.2-p0@rails3tutorial/bin:/home/countjocular/.rvm/gems/ruby-1.9.2-p0@global/bin:/home/countjocular/.rvm/rubies/ruby-1.9.2-p0/bin:/home/countjocular/.rvm/bin:/var/lib/gems/1.9.0/bin:/home/countjocular/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export EDITOR=vim

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Let tmux grab the working directory
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# Finally, RVM stuff
export PATH=/var/lib/gems/1.9.0/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -s "/$HOME/.scm_breeze/scm_breeze.sh" ] && source "/$HOME/.scm_breeze/scm_breeze.sh"

# Import any settings local to this machine
source $HOME/.zsh_local
