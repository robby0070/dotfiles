#!/bin/bash
# Profile file. Runs on login.

# keyboard mapping
#exec setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

export XDG_CONFIG_HOME="$HOME/.config"

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "/home/roberto-arch/.local/bin" | cut -f2 | tr '\n' ':')"

# Aliases used programs
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="brave"
export READER="zathura"

# ssh fix for termite
export TERM=xterm-color

# dotfiles git repository
#alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Adds the cross compiler directory and variables to path
#export PREFIX="$HOME/prj/opt/cross"
#export TARGET=i686-elf
export PATH="$HOME/prj/opt/cross/bin:$PATH"

# GOPATH 
export GOPATH=$HOME/lng/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOPATH/bin:$PATH

# Clean up
export XDG_DATA_HOME="$HOME"/.data
export XDG_CACHE_HOME="$HOME"/.cache
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0" export LESSHISTFILE="-"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export LESSHISTFILE=-
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export STACK_ROOT="$XDG_DATA_HOME"/stack
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

# Starting some programs

unclutter &
apply_wallpaper &
picom -b &
flashfocus &
nm-applet &
thunar --daemon &
/usr/lib/xfce-polkit/xfce-polkit &
sxhkd &
dunst &

exec i3 > /dev/null 2>&1 

