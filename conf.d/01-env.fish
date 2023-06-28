#
# env - set environment vars
#

# disable new user greeting
set fish_greeting

# Editor variables
set -gx PAGER less
set -gx VISUAL code
set -gx EDITOR vim

# Browser
switch (uname -s)
case Darwin
    set -gx BROWSER open
end

# dotfiles
set -q DOTFILES || set -gx DOTFILES ~/.config/dotfiles
set -q ZDOTDIR || set -gx ZDOTDIR ~/.config/zsh

# initial working directory
set -g IWD $PWD

# Add my bin directory to path.
fish_add_path ~/bin

# add function subdirs to fish_function_path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# add completion subdirs to fish_completion_path
set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path

# XDG apps
set -gx SQLITE_HISTORY $XDG_DATA_HOME/sqlite_history
set -gx LESSHISTFILE $XDG_DATA_HOME/lesshst
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg

# My special dirs
set -gx MY_PROJECTS $HOME/Projects
set -gx my_plugins_path $__fish_config_dir/plugins

# Reel plugins
set -gx REEL_HOME $XDG_DATA_HOME/reel
