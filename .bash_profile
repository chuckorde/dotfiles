set -o vi

alias h='history | grep'
alias l='ls -lh'
alias ll='ls -latrFh'
alias cdc='cd ~/Code'
alias cdd='cd ~/Desktop'
alias httphead='curl -I'

function new_maven_project {	
	mvn -B archetype:generate \
		-DgroupId=com.chuckorde.app \
		-DarchetypeArtifactId=maven-archetype-quickstart \
		-DartifactId=$1 \
		-DinteractiveMode=false
}	

function run_maven_project {	
	java -cp target/$(basename `pwd`)-1.0-SNAPSHOT.jar com.chuckorde.app.App
}

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

export PS1='${OOO}\w{\!}[$?] '

# PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
