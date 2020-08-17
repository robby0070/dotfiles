#!/bin/bash
#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

set -o vi #vi mode 
stty -ixon # Disable ctrl-s and ctrl-q.
set show-all-if-ambiguous on #tab completion
HISTSIZE= HISTFILESIZE= # Infinite history.

export PS1="\W >> "
export GPG_TTY=$(tty)

#sourcing 
source /usr/share/bash-completion/bash_completion

# Some aliases
alias wget="wget --hsts-file='$XDG_CACHE_HOME/wget-hsts'"
alias untar="tar -xvzf" 
alias godir="cd ~/gopath/src/"
alias cp="cpg -rg"
alias mv="mvg -g"
alias vim="nvim"
alias ls="ls --color=auto"

# Debian file server
alias ssh_debian="ssh roberto-debian@192.168.0.2"
alias open_plex="i3 exec $BROWSER 192.168.0.2:32400"
alias connect_deluge="ssh -p 2222 -fNL 127.0.0.2:58846:localhost:58846 roberto-debian@79.33.59.142"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function cd {
    builtin cd "$@" && ls -F
}

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"

#go
vf() { $EDITOR $(fzf) ;}
export TERM=xterm-256color
