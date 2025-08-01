" CAPL颜色主题配置文件
" 提供更丰富的语法高亮颜色

" 检查是否已加载
if exists("g:loaded_capl_colors")
  finish
endif
let g:loaded_capl_colors = 1

" 仅在CAPL文件类型中应用
if &filetype != 'capl'
  finish
endif

" 定义丰富的颜色方案
if has("gui_running") || &t_Co > 255
  " GUI或256色终端
  hi caplType guifg=#0066CC ctermfg=Blue
  hi caplEvent guifg=#CC00CC ctermfg=DarkMagenta
  hi caplFunction guifg=#009900 ctermfg=DarkGreen
  hi caplConstant guifg=#CC6600 ctermfg=DarkRed
  hi caplNumber guifg=#FF6600 ctermfg=DarkYellow
  hi caplString guifg=#009900 ctermfg=Green
  hi caplComment guifg=#666666 ctermfg=DarkGray
  hi caplPreProc guifg=#FF6600 ctermfg=DarkRed
  hi caplOperator guifg=#FF6600 ctermfg=DarkRed
  hi caplConditional guifg=#CC00CC ctermfg=DarkMagenta
  hi caplRepeat guifg=#CC00CC ctermfg=DarkMagenta
else
  " 8色终端
  hi caplType ctermfg=Blue
  hi caplEvent ctermfg=Magenta
  hi caplFunction ctermfg=Green
  hi caplConstant ctermfg=Red
  hi caplNumber ctermfg=Yellow
  hi caplString ctermfg=Green
  hi caplComment ctermfg=DarkGray
  hi caplPreProc ctermfg=Red
  hi caplOperator ctermfg=Red
  hi caplConditional ctermfg=Magenta
  hi caplRepeat ctermfg=Magenta
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