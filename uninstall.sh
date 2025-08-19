#!/bin/bash

# CAPL VIM语法高亮插件卸载脚本

echo "正在卸载CAPL VIM语法高亮插件..."

# 检测操作系统类型
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  VIM_DIR="$HOME/.vim"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  VIM_DIR="$HOME/.vim"
else
  VIM_DIR="$HOME/.vim"
fi

echo "删除插件文件..."

# 删除语法文件
if [ -f "$VIM_DIR/syntax/capl.vim" ]; then
  rm "$VIM_DIR/syntax/capl.vim"
  echo "已删除 $VIM_DIR/syntax/capl.vim"
fi

# 删除文件类型检测文件
if [ -f "$VIM_DIR/ftdetect/capl.vim" ]; then
  rm "$VIM_DIR/ftdetect/capl.vim"
  echo "已删除 $VIM_DIR/ftdetect/capl.vim"
fi

# 删除插件文件
if [ -f "$VIM_DIR/plugin/capl.vim" ]; then
  rm "$VIM_DIR/plugin/capl.vim"
  echo "已删除 $VIM_DIR/plugin/capl.vim"
fi

# 删除颜色主题文件
if [ -f "$VIM_DIR/colors/capl_colors.vim" ]; then
  rm "$VIM_DIR/colors/capl_colors.vim"
  echo "已删除 $VIM_DIR/colors/capl_colors.vim"
fi

# 删除示例文件目录
if [ -d "$VIM_DIR/capl_examples" ]; then
  rm -rf "$VIM_DIR/capl_examples"
  echo "已删除 $VIM_DIR/capl_examples 目录"
fi

# 如果插件目录为空，删除目录
if [ -d "$VIM_DIR/syntax" ] && [ -z "$(ls -A "$VIM_DIR/syntax")" ]; then
  rmdir "$VIM_DIR/syntax"
  echo "已删除空目录 $VIM_DIR/syntax"
fi

if [ -d "$VIM_DIR/ftdetect" ] && [ -z "$(ls -A "$VIM_DIR/ftdetect")" ]; then
  rmdir "$VIM_DIR/ftdetect"
  echo "已删除空目录 $VIM_DIR/ftdetect"
fi

if [ -d "$VIM_DIR/plugin" ] && [ -z "$(ls -A "$VIM_DIR/plugin")" ]; then
  rmdir "$VIM_DIR/plugin"
  echo "已删除空目录 $VIM_DIR/plugin"
fi

if [ -d "$VIM_DIR/colors" ] && [ -z "$(ls -A "$VIM_DIR/colors")" ]; then
  rmdir "$VIM_DIR/colors"
  echo "已删除空目录 $VIM_DIR/colors"
fi

echo "卸载完成！"
echo ""
echo "提示: 重新启动VIM或运行 :source ~/.vimrc 使更改生效"