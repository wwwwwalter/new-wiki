#if you only want config vim
#then in this place run ./setup_vim.sh
#if you want to config tmux & vim 
#then run ../setup_vim_tmux.sh

set -e
set -x

sudo apt install vim -y

FILE="$HOME/.vim/vimrc"
if [ -f "$FILE" ]; then
    mv $FILE $FILE.back
fi
sudo cp ~/wiki/wiki-tool/vim/vimrc /etc/vim/
cp -r ~/wiki/wiki-tool/vim/.vim ~
echo "config vim done!"
