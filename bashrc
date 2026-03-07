stty erase ^H
PS1=$'\[\e[1m\e[32m\]pts/\l'
PS1=$PS1$'\[\e[m\]:'
PS1=$PS1$'\[\e[1m\e[34m\]\w'
PS1=$PS1$'\[\e[m\]$ '
alias grep='grep --color=auto'
alias make='if [ $PWD = ~/tex ] || [ $PWD = ~/mf ]; then make=make-texmf; else make=make; fi; $make'
