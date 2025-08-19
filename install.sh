#!/bin/bash

# CAPL VIM插件安装脚本

echo "正在安装CAPL VIM语法高亮插件..."

# 检测操作系统
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    VIM_DIR="$HOME/.vim"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    VIM_DIR="$HOME/.vim"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    VIM_DIR="$HOME/vimfiles"
else
    echo "不支持的操作系统: $OSTYPE"
    exit 1
fi

# 创建必要的目录
echo "创建目录..."
mkdir -p "$VIM_DIR/syntax"
mkdir -p "$VIM_DIR/ftdetect"
mkdir -p "$VIM_DIR/plugin"
mkdir -p "$VIM_DIR/colors"

# 复制文件
echo "复制插件文件..."
cp syntax/capl.vim "$VIM_DIR/syntax/"
cp ftdetect/capl.vim "$VIM_DIR/ftdetect/"
cp plugin/capl.vim "$VIM_DIR/plugin/"
cp colors/capl_colors.vim "$VIM_DIR/colors/"

# 创建示例目录
mkdir -p "$VIM_DIR/capl_examples"
cp examples/example.can "$VIM_DIR/capl_examples/"

echo "安装完成！"
echo ""
echo "使用方法:"
echo "1. 打开 .can 或 .cin 文件，语法高亮将自动启用"
echo "2. 查看示例文件: $VIM_DIR/capl_examples/example.can"
echo "3. 如需卸载，可以运行提供的uninstall.sh脚本"
echo ""
echo "提示: 重新启动VIM或运行 :source ~/.vimrc 使插件生效"