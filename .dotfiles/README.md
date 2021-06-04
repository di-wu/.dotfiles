# My ~/.* Files

## Prerequisites for a fresh install.

You need to have at least `git` installed.
```shell
sudo apt install git vim
```

Make sure to configure your `.gitconfig`.
```shell
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global core.editor "vim"
git config --global core.excludesfile ~/.gitignore
git config --global url."git@github.com:".insteadOf "https://github.com/"
```

It should resemble this.
```shell
[user]
	name = Quint Daenen
	email = me@di-wu.be
[core]
	editor = vim
	excludesfile = /home/quint/.gitignore
[url "git@github.com:"]
	insteadOf = https://github.com/
```

Create a (new) SSH key and add it to GitHub.
```shell
ssh-keygen -t ed25519
```

You can check whether it was added correctly.
```shell
ssh -T git@github.com
```

## Downloading `.dotfiles` from GitHub.

1. Clone the git repository.
```shell
git clone --bare git@github.com:di-wu/.dotfiles.git $HOME/.dotfiles
```

2. Define an alias in the current shell.
```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. Checkout the repository.
```shell
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Using/Updating the `.dotfiles`.

Example:
```shell
dotfiles status
dotfiles add .bashrc
dotfiles commit -m "Add bashrc."
dotfiles push
```

## Creating your own `.dotfiles` repository.

1. Create a bare git repository.
```shell
git init --bare $HOME/.dotfiles
```

2. Make sure to ignore untracked files.
```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

3. Add an alias to the git instance to your `.bashrc` file.
```shell
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

