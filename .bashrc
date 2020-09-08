PATH=$PATH:~/bin

# ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
