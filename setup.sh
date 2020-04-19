curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
mkdir ~/.vim/backups

cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
source ~/.zshrc
base16_default_dark
