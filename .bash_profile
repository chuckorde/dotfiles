set -o vi

alias h='history | grep'
alias l='ls -lh'
alias ll='ls -latrFh'
#alias vi='vim'
alias cdc='cd ~/Code'
alias cdd='cd ~/Desktop'
alias httphead='curl -I'
# alias psg='ps ax | grep' # use pgrep

export PS1='${OOO}\w{\!}[$?] '


paths=(
	${HOME}/bin
	/usr/local/sbin
)

path=""

for p in ${paths[@]}
do
	[ -d ${p} ] && path+=:${p}
done
export PATH=${path:1}:${PATH}
unset path p

PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
