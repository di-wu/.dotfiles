PATH=$PATH:~/bin

# ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# colour
export PS1="\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\]\[\e[0m\] \w\n$ "
