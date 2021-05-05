PATH=$PATH:~/bin:~/.idris2/bin:~/.aseprite/bin:~/.cargo/bin:~/.emacs.d/bin:~/.local/bin:/usr/local/go/bin:~/go/bin:/usr/local/zig

# go stuff...
export GOPATH=$HOME/go
export GOBIN=$(go env GOPATH)/bin

# time stuff
export LC_TIME=en_US.utf8

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# git
# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}] "
	else
		echo ""
	fi
}

# color prompt
export PS1="\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\]\[\e[0m\] \w\n\[\e[2m\]\`parse_git_branch\`\[\e[0m\]$ "

# ix.io
ix() {
    local opts
    local OPTIND
    [ -f "$HOME/.netrc" ] && opts='-n'
    while getopts ":hd:i:n:" x; do
        case $x in
            h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
            d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
            i) opts="$opts -X PUT"; local id="$OPTARG";;
            n) opts="$opts -F read:1=$OPTARG";;
        esac
    done
    shift $(($OPTIND - 1))
    [ -t 0 ] && {
        local filename="$1"
        shift
        [ "$filename" ] && {
            curl $opts -F f:1=@"$filename" $* ix.io/$id
            return
        }
        echo "^C to cancel, ^D to send."
    }
    curl $opts -F f:1='<-' $* ix.io/$id
}

# Tracks whether there are changes in one of the ~/git subdictories.
changes() {
	find ~/git -mindepth 2 -maxdepth 3 -type d | while read -r dir
	do
		(
		cd $dir
		if [ -d "$dir/.git" ]; then
			status=$(git status -s)
			if [[ $status ]]; then
				echo $dir
				git status -s
			fi
		fi
		)
	done
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

