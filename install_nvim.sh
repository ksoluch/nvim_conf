apt-get install python-dev python-pip python3-dev python2-pip python3-pip -y
apt-get install software-properties-common -y
apt-get install ruby2.5 ruby2.5-dev -y

apt-add-repository ppa:neovim-ppa/stable
apt-get update

apt-get install neovim -y

pip2 install --upgrade neovim
pip3 install --upgrade neovim
gem install neovim

apt-get install clang-format ssh xclip g++ gcc -y
apt-get install exuberant-ctags cscope tmux -y

mkdir ~/.vim

#mkdir ~/.config/nvic
#git clone https://github.com/ksoluch/nvim_conf.git ~/.config/nvim/

