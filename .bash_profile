#
#
set -o vi
alias l='ls -l'
alias ll='ls -latrF'
alias eject='drutil eject'

export PS1='\w{\!}[$?] '
export PATH=${PATH}:~/bin:/usr/texbin
export PATH=${PATH}:/usr/local/Cellar/nmap/6.01/bin
#export PATH=${PATH}:/usr/local/mysql/bin
#export PATH=/opt/subversion/bin:{$PATH}
export PATH=${PATH}:~/Code/Andriod/adt-bundle-mac-x86_64/sdk/platform-tools
export PATH=${PATH}:~/Code/Andriod/adt-bundle-mac-x86_64/sdk/tools


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
