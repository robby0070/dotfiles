#!/bin/bash
# Profile file. Runs on login.

# keyboard mapping
#exec setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

export XDG_CONFIG_HOME="$HOME/.config"

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "/home/roberto-arch/.local/bin" | cut -f2 | tr '\n' ':')"

# Aliases used programs
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="brave"
export READER="zathura"

# ssh fix for termite
export TERM=xterm-color

# Adds the cross compiler directory and variables to path
#export PREFIX="$HOME/prj/opt/cross"
#export TARGET=i686-elf
#export PATH="$HOME/prj/opt/cross/bin:$PATH"

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

export DMENU_CONFIG="-i -nb #1C2023 -sf #ffffff -sb #45C7C4 -nf #ffffff"

# Starting some programs
unclutter &
#apply_wallpaper &
/usr/lib/xfce-polkit/xfce-polkit &

panel > /dev/null 2>&1 &
sxhkd &
dunst &
start_scratchpad & 

bspwm > /dev/null 2>&1 

