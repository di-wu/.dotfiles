# no more nano
alias nano='vim'

# ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# apt
alias update='sudo apt update && sudo apt upgrade'

# mkdir
alias mkdir='mkdir -pv'

# ls
alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias la='ls -al'
alias l.='ls -A | grep "^\."'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# date
alias now='date +"%T"'

# for safety
alias rm='rm -i --preserve-root'
alias mv='mv -i'
alias cp='cp -i'

# browser
alias browser='firefox'

# git
alias gitl='git log --oneline'

