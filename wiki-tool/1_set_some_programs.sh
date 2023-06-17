#初始化root密码
sudo passwd
#先输入当前用户的sudo密码
#再输入root密码：root root

#配置镜像源
#如果有图形化界面，可以直接在settings里选择aliyun的镜像源
#如果只有远程终端，可以执行下面的命令把默认的sources.list替换为aliyun的sources.list
#注意选择windows/ubuntu
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.back
#sudo cp ../wiki-ubuntu/sources.list.for.ubuntu /etc/apt/sources.list

#change source in setting to aliyun
sudo apt update
sudo apt upgrade -y
#maybe need reboot system





#==========some important programs=============
sudo apt install openssh-server -y
sudo apt install git -y
sudo apt install guake -y

#ssh-keygen
#add id_rsa.pub to coding
#git clone git@git.dev.tencent.com:wwwwwalter/wiki.git
#exec 2_set_git_vim_tmux.sh

sudo apt install build-essential
#yum -y groupinstall "Development Tools"
