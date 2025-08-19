# VIM CAPL Syntax Highlighting Plugin

这是一个为CAPL (Communication Access Programming Language) 语言提供语法高亮支持的VIM插件。

CAPL是Vector公司开发的专用语言，主要用于汽车测试、仿真和诊断领域。

## 功能特性

- **丰富的语法高亮**: 支持CAPL语言的关键字、类型、函数和常量，使用多种颜色区分
- **文件类型检测**: 自动识别 `.can` 和 `.cin` 文件
- **代码折叠**: 基于代码结构的智能折叠
- **注释支持**: 支持 `//` 和 `/* */` 两种注释格式
- **自动缩进**: 适合CAPL代码的缩进设置
- **编译集成**: 提供基本的编译命令框架
- **自定义颜色主题**: 内置丰富的颜色方案，告别单调的红绿色
- **新主题配置**: 支持暗色、亮色、高对比度三种主题，可自定义配色

## 安装方法

### 使用Vim-Plug (推荐)
1. 在 `.vimrc` 中添加：
   ```vim
   Plug 'your-username/vim-capl-syntax'
   ```
2. 运行 `:PlugInstall`

### 手动安装
1. 将插件目录复制到VIM的插件目录：
   ```bash
   cp -r vim_capl_syntax/* ~/.vim/
   ```

### 使用Pathogen
1. 克隆到bundle目录：
   ```bash
   cd ~/.vim/bundle
   git clone https://github.com/your-username/vim-capl-syntax.git
   ```

## 使用方法

### 基本使用
- 打开 `.can` 或 `.cin` 文件，插件会自动启用CAPL语法高亮
- 使用标准的VIM命令进行编辑
- 查看示例文件: ~/.vim/capl_examples/example.can
- 如需卸载，可以运行提供的uninstall.sh脚本

### 快捷键和命令
- `:CaplCompile` - 编译当前CAPL文件（需要配置编译器路径）

### 自定义设置
可以在 `.vimrc` 中添加以下设置来自定义行为：

```vim
" 设置CAPL文件的缩进大小
autocmd FileType capl setlocal shiftwidth=4
autocmd FileType capl setlocal tabstop=4

" 禁用自动折叠
autocmd FileType capl setlocal foldmethod=manual
```

### 颜色主题配置

默认主题已设置为暗色主题，如需更改，可在.vimrc中添加相应配置:

支持三种主题模式：

**暗色主题**（默认）：
```vim
" 在.vimrc中添加
let g:capl_theme = 'dark'
```

**亮色主题**：
```vim
" 在.vimrc中添加
let g:capl_theme = 'light'
```

**高对比度主题**：
```vim
" 在.vimrc中添加
let g:capl_theme = 'highcontrast'
```

**临时切换主题**（无需重启vim）：
```vim
" 在vim中执行
:let g:capl_theme = 'light'
:source ~/.vim/colors/capl_colors.vim
```

### 颜色说明

| 语法元素 | 暗色主题 | 亮色主题 | 高对比度 |
|---------|---------|---------|---------|
| 数据类型 (caplType) | 蓝色 (#569CD6) | 蓝色 (#0000FF) | 青色 (#00FFFF) |
| 事件处理器 (caplEvent) | 紫色 (#C586C0) | 紫色 (#800080) | 洋红 (#FF00FF) |
| 内置函数 (caplFunction) | 黄色 (#DCDCAA) | 橄榄色 (#795E26) | 黄色 (#FFFF00) |
| 常量 (caplConstant) | 浅蓝 (#4FC1FF) | 绿色 (#098658) | 绿色 (#00FF00) |
| 数字 (caplNumber) | 浅绿 (#B5CEA8) | 绿色 (#098658) | 绿色 (#00FF00) |
| 字符串 (caplString) | 橙色 (#CE9178) | 红色 (#A31515) | 浅红 (#FF8080) |
| 注释 (caplComment) | 灰绿 (#6A9955) | 绿色 (#008000) | 浅绿 (#80FF80) |
| 预处理指令 (caplPreProc) | 紫色 (#C586C0) | 紫色 (#800080) | 洋红 (#FF00FF) |
| 操作符 (caplOperator) | 灰白 (#D4D4D4) | 黑色 (#000000) | 白色 (#FFFFFF) |
| 条件语句 (caplConditional) | 紫色 (#C586C0) | 紫色 (#800080) | 洋红 (#FF00FF) |
| 循环语句 (caplRepeat) | 紫色 (#C586C0) | 紫色 (#800080) | 洋红 (#FF00FF) |
| 标签 (caplLabel) | 浅蓝 (#9CDCFE) | 蓝色 (#001080) | 青色 (#00FFFF) |
| 分隔符 (caplDelimiter) | 灰白 (#D4D4D4) | 黑色 (#000000) | 白色 (#FFFFFF) |
| 标识符 (caplIdentifier) | 浅蓝 (#9CDCFE) | 蓝色 (#001080) | 青色 (#00FFFF) |
| 待办事项 (caplTodo) | 红色 (#FF6B6B) | 红色 (#FF0000) | 红色 (#FF0000) |

## 支持的文件类型

- `.can` - CAPL源文件
- `.cin` - CAPL包含文件

## 语法高亮元素

### 关键字
- 数据类型: `int`, `float`, `double`, `char`, `byte`, `word`, `dword`, `qword`, `void`
- 控制结构: `if`, `else`, `for`, `while`, `switch`, `case`, `default`
- CAPL特定: `message`, `timer`, `on`, `start`, `stopMeasurement`

### 函数和常量
- 内置函数: `setTimer`, `output`, `getValue`, `setSignal`
- 常量: `OK`, `ERROR`, `ERR_OK`, `ERR_PARAM`

## 故障排除

### 语法高亮未生效
1. 确保文件扩展名为 `.can` 或 `.cin`
2. 运行 `:set filetype=capl` 手动设置
3. 检查插件是否正确安装

### 编译器错误 (E666: Compiler not supported: capl)
这个错误是由于插件尝试设置不存在的CAPL编译器。已在最新版本中修复。
- **解决方案**: 更新到最新版本或手动注释掉 `plugin/capl.vim` 中的 `compiler capl` 行
- **临时解决**: 在VIM中运行 `:setlocal makeprg=`

### 颜色主题问题
某些颜色主题可能不完全支持所有语法组。建议：
- 使用支持完整语法高亮的颜色主题
- 在 `.vimrc` 中自定义高亮组

## 贡献

欢迎提交Issue和Pull Request来改进这个插件。

## 许可证

MIT License - 详见 LICENSE 文件