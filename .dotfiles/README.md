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
