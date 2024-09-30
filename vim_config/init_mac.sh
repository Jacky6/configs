#!/bin/bash
#mac 下 vim 初始化脚本

# 检查 vim 是否安装
if ! type vim > /dev/null; then
    echo "vim is not installed"
    exit 1
fi

# 安装 vudule 插件管理器
# 判断 ~/.vim/bundle/Vundle.vim 是否存在
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "install Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle already installed"
fi

# 配置文件
cp vimrc_ultra ~/.vimrc
