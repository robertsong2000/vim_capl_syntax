" CAPL现代颜色主题配置文件
" 提供多种主题选择：暗色主题、亮色主题、高对比度主题

" 检查是否已加载
if exists("g:loaded_capl_colors")
  finish
endif
let g:loaded_capl_colors = 1

" 仅在CAPL文件类型中应用
if &filetype != 'capl'
  finish
endif

" 主题选择变量
if !exists("g:capl_theme")
  let g:capl_theme = 'dark'  " 默认暗色主题
endif

" 根据主题设置颜色
if g:capl_theme == 'dark'
  " 暗色主题 (类似VS Code Dark+)
  if has("gui_running") || &t_Co > 255
    hi caplType guifg=#569CD6 ctermfg=75
    hi caplEvent guifg=#C586C0 ctermfg=176
    hi caplFunction guifg=#DCDCAA ctermfg=228
    hi caplConstant guifg=#4FC1FF ctermfg=39
    hi caplNumber guifg=#B5CEA8 ctermfg=151
    hi caplString guifg=#CE9178 ctermfg=208
    hi caplComment guifg=#6A9955 ctermfg=65
    hi caplPreProc guifg=#C586C0 ctermfg=176
    hi caplOperator guifg=#D4D4D4 ctermfg=252
    hi caplConditional guifg=#C586C0 ctermfg=176
    hi caplRepeat guifg=#C586C0 ctermfg=176
    hi caplLabel guifg=#9CDCFE ctermfg=159
    hi caplDelimiter guifg=#D4D4D4 ctermfg=252
    hi caplIdentifier guifg=#9CDCFE ctermfg=159
    hi caplTodo guifg=#FF6B6B ctermfg=203
  else
    " 8色终端兼容
    hi caplType ctermfg=Blue
    hi caplEvent ctermfg=Magenta
    hi caplFunction ctermfg=Yellow
    hi caplConstant ctermfg=Cyan
    hi caplNumber ctermfg=Green
    hi caplString ctermfg=Red
    hi caplComment ctermfg=DarkGray
    hi caplPreProc ctermfg=Magenta
    hi caplOperator ctermfg=White
    hi caplConditional ctermfg=Magenta
    hi caplRepeat ctermfg=Magenta
    hi caplLabel ctermfg=Cyan
    hi caplDelimiter ctermfg=White
    hi caplIdentifier ctermfg=Cyan
    hi caplTodo ctermfg=Red
  endif
elseif g:capl_theme == 'light'
  " 亮色主题
  if has("gui_running") || &t_Co > 255
    hi caplType guifg=#0000FF ctermfg=Blue
    hi caplEvent guifg=#800080 ctermfg=DarkMagenta
    hi caplFunction guifg=#795E26 ctermfg=58
    hi caplConstant guifg=#098658 ctermfg=29
    hi caplNumber guifg=#098658 ctermfg=29
    hi caplString guifg=#A31515 ctermfg=124
    hi caplComment guifg=#008000 ctermfg=DarkGreen
    hi caplPreProc guifg=#800080 ctermfg=DarkMagenta
    hi caplOperator guifg=#000000 ctermfg=Black
    hi caplConditional guifg=#800080 ctermfg=DarkMagenta
    hi caplRepeat guifg=#800080 ctermfg=DarkMagenta
    hi caplLabel guifg=#001080 ctermfg=19
    hi caplDelimiter guifg=#000000 ctermfg=Black
    hi caplIdentifier guifg=#001080 ctermfg=19
    hi caplTodo guifg=#FF0000 ctermfg=Red
  else
    hi caplType ctermfg=Blue
    hi caplEvent ctermfg=Magenta
    hi caplFunction ctermfg=Brown
    hi caplConstant ctermfg=Green
    hi caplNumber ctermfg=Green
    hi caplString ctermfg=Red
    hi caplComment ctermfg=DarkGreen
    hi caplPreProc ctermfg=Magenta
    hi caplOperator ctermfg=Black
    hi caplConditional ctermfg=Magenta
    hi caplRepeat ctermfg=Magenta
    hi caplLabel ctermfg=Blue
    hi caplDelimiter ctermfg=Black
    hi caplIdentifier ctermfg=Blue
    hi caplTodo ctermfg=Red
  endif
elseif g:capl_theme == 'highcontrast'
  " 高对比度主题
  if has("gui_running") || &t_Co > 255
    hi caplType guifg=#00FFFF ctermfg=Cyan
    hi caplEvent guifg=#FF00FF ctermfg=Magenta
    hi caplFunction guifg=#FFFF00 ctermfg=Yellow
    hi caplConstant guifg=#00FF00 ctermfg=Green
    hi caplNumber guifg=#00FF00 ctermfg=Green
    hi caplString guifg=#FF8080 ctermfg=Red
    hi caplComment guifg=#80FF80 ctermfg=LightGreen
    hi caplPreProc guifg=#FF00FF ctermfg=Magenta
    hi caplOperator guifg=#FFFFFF ctermfg=White
    hi caplConditional guifg=#FF00FF ctermfg=Magenta
    hi caplRepeat guifg=#FF00FF ctermfg=Magenta
    hi caplLabel guifg=#00FFFF ctermfg=Cyan
    hi caplDelimiter guifg=#FFFFFF ctermfg=White
    hi caplIdentifier guifg=#00FFFF ctermfg=Cyan
    hi caplTodo guifg=#FF0000 ctermfg=LightRed
  else
    hi caplType ctermfg=LightCyan
    hi caplEvent ctermfg=LightMagenta
    hi caplFunction ctermfg=LightYellow
    hi caplConstant ctermfg=LightGreen
    hi caplNumber ctermfg=LightGreen
    hi caplString ctermfg=LightRed
    hi caplComment ctermfg=LightGreen
    hi caplPreProc ctermfg=LightMagenta
    hi caplOperator ctermfg=White
    hi caplConditional ctermfg=LightMagenta
    hi caplRepeat ctermfg=LightMagenta
    hi caplLabel ctermfg=LightCyan
    hi caplDelimiter ctermfg=White
    hi caplIdentifier ctermfg=LightCyan
    hi caplTodo ctermfg=LightRed
  endif
endif

" 覆盖默认链接
hi def link caplType caplType
hi def link caplEvent caplEvent
hi def link caplFunction caplFunction
hi def link caplConstant caplConstant
hi def link caplNumber caplNumber
hi def link caplString caplString
hi def link caplComment caplComment
hi def link caplPreProc caplPreProc
hi def link caplOperator caplOperator
hi def link caplConditional caplConditional
hi def link caplRepeat caplRepeat
hi def link caplLabel caplLabel
hi def link caplDelimiter caplDelimiter
hi def link caplIdentifier caplIdentifier
hi def link caplTodo caplTodo