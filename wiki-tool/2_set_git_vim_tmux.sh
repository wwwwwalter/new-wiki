#config vim & tmux
#please run this script in this place
set -e
set -x

../wiki-git/setup_git.sh
../wiki-wbuntu/setup_bell.sh
vim/setup_vim.sh
tmux/setup_tmux.sh

echo "All done!"
