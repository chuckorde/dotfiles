# git clone https://github.com/chuckorde/dotfiles.git
#### then: cd dotfiles && sh README.md 
for i in $(ls -A); do mv $i ..; done
cd ..
rmdir dotfiles/
