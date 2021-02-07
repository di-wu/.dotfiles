PATH=$PATH:~/bin:~/.aseprite/bin:~/.cargo/bin:~/.emacs.d/bin:~/.local/bin:/usr/local/go/bin:/usr/local/zig

# no more nano
alias nano='vim'

# ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

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

# more color
alias ls='ls --color=auto'

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

