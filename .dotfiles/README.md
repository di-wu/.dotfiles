# My ~/.* Files

# Getting started w/ dotfiles.

1. Create a git repository.

```shell
git init --bare $HOME/.dotfiles
```

2. Make sure to ignore untracked files.

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

3. Add an alias to the git instance to your `.*rc` file.
   Change `.bashrc` w/ your preferred shell.
```shell
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

# How to use.

Example:

```shell
dotfiles status
dotfiles add .bashrc
dotfiles commit -m "Add bashrc."
dotfiles push
```

# Setup env on a new computer.

1. Clone the git repository.

```shell
git clone --bare https://github.com/di-wu/.dotfiles.git $HOME/.dotfiles
```

2. Define an alias in the current shell.
```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. Checkout.
```shell
dotfiles checkout
```
