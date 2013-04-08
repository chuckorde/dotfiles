#
#
set -o vi

alias h='history'
alias l='ls -l'
alias ll='ls -latrF'
alias eject='drutil eject'
alias cdc='cd ~/Code'
alias cdd='cd ~/Desktop'
alias httphead='curl -I'
alias tree="find . \( ! -regex '.*/\..*' \) | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
#alias apachectl='sudo apachectl'

function md {
	mkdir -p $@ && cd $@
}

contains() {
	find . -exec grep -il "python" {} 2>/dev/null \;
}

export PS1='${OOO}\w{\!}[$?] '

# Out of office, or generally confused
alias ooo="export OOO=$(uname -n):; export PS1"


paths=(
	${HOME}/bin
	/usr/texbin 
	/usr/local/Cellar/nmap/6.01/bin 
	/usr/local/heroku/bin
	/usr/local/share/npm/bin
	#/usr/local/mysql/bin
	#~/Code/Andriod/adt-bundle-mac-x86_64/sdk/platform-tools
	#~/Code/Andriod/adt-bundle-mac-x86_64/sdk/tools
)


path=""

for p in ${paths[@]} 
do
	[ -d ${p} ] && path+=:${p}
done

export PATH=${PATH}${path}

unset path p


