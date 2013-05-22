#only execute in interactive mode
[ -z "$PS1" ] && return

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

# prompt
export PS1="\[\033[1;34m\]\t \[\033[0;31m\]\u\[\033[0m\]@\[\033[32m\]\H \[\033[1;32m\]\w\$(parse_git_branch) \[\033[1;37m\]# \[\033[0m\] "

shopt -s cdspell
shopt -s checkwinsize

# aliases: general
alias dir='ls -lisah'
alias ll='ls -lisah'

alias ..='cd ..'
alias cd..='cd ..'
alias o.o='ls -lisah --color=auto'
alias grep='grep --color=auto'

# aliases: qfm/git
alias push='git push origin --all'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit -m'
alias gp='git push'
alias gs='git status'

alias halt='echo Nein, Idiot'

# aliases
alias cw='compass watch'
alias qfm='cd /Users/martinwolf/Dropbox/Websites/quote.fm/html'
alias taw='cd /Users/martinwolf/Dropbox/Websites/theamazingweb.net/html/wp-content/themes/theamazingweb_v2'
alias wl='cd /Users/martinwolf/Dropbox/Websites/watched.li/watchedli-frontend'

# aliases: superReal
alias sr='cd /Users/martinwolf/Dropbox/Websites/superReal'
alias wls='cd /Users/martinwolf/Dropbox/Websites/superReal/wls'

# aliases: awesome
alias please='sudo'

# exports
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export EDITOR="vim"

