#if you only want config tmux
#then in this place run ./setup_tmux.sh
#if you want to config tmux & vim
#then run ../set_vim_tmux.sh

set -e
set -x

#install tmux2.9
cd $HOME
mkdir -p tool
#git clone https://github.com/tmux/tmux.git
cp -r ~/wiki/wiki-tool/tmux/tmux .
cd tmux
#git checkout 2.9

sudo apt install -y automake
sudo apt install -y libevent-dev
sudo apt install -y gcc
sudo apt install -y ncurses-dev
sudo apt install -y pkg-config

sh autogen.sh
./configure && make
sudo make install
echo "install tmux2.9 done!"

#make tmux-mem-cpu-load
#git clone --recursive https://github.com/tony/tmux-config.git
cd tmux-config/vendor/tmux-mem-cpu-load
mkdir -p build && cd build
sudo apt install -y cmake
cmake ..
make
sudo make install
echo "make tmux-mem-cpu-load done!"

#cp tmux.conf
cp ~/wiki/wiki-tool/tmux/tmux/tmux-config/.tmux.conf ~
echo "cp tmux.conf done!"
