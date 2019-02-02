# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export EDITOR="$VISUAL"
export PAGER=vimpager
export VISUAL=vim

export HISTCONTROL=ignoredups
export HISTSIZE=8192

# Common aliases.
alias ls='LC_COLLATE=C ls --color=auto'
alias ll='LC_COLLATE=C ls -la'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias df='df -H'
alias diff='colordiff'
alias less=$PAGER
alias zless=$PAGER

# Safety nets.
alias rm='rm --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias ssh='ssh -q'
alias ssh-add='ssh-add -t 1h'

# docker rm $(docker ps -aq) && docker rmi $(docker images | grep "^<none>" | awk '{print $3}')

source /usr/share/nvm/init-nvm.sh

cd ~
