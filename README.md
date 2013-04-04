git clone https://github.com/chuckorde/dotfiles.git
cd dotfiles/
for i in $(ls -A); do mv $i ..; done
rmdir dotfiles/
