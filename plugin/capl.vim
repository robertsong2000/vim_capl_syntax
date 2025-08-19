" CAPL plugin for Vim
" Provides additional functionality for CAPL language support

if exists("g:loaded_capl")
  finish
endif
let g:loaded_capl = 1

" Set default CAPL theme to dark
if !exists("g:capl_theme")
  let g:capl_theme = 'dark'
endif

" Set comment strings
autocmd FileType capl setlocal commentstring=//%s
autocmd FileType capl setlocal comments=s1:/*,mb:*,ex:*/,://

" Set indentation
autocmd FileType capl setlocal cindent
autocmd FileType capl setlocal cinoptions&

" Set keyword characters
autocmd FileType capl setlocal iskeyword=@,48-57,_,192-255

" Set shiftwidth and tabstop
autocmd FileType capl setlocal shiftwidth=2
autocmd FileType capl setlocal tabstop=2
autocmd FileType capl setlocal softtabstop=2

" Enable folding based on braces
autocmd FileType capl setlocal foldmethod=syntax
autocmd FileType capl setlocal foldlevel=99

" Set compiler for CAPL files (注释掉，因为CAPL没有标准VIM编译器)
" autocmd FileType capl compiler capl

" Function to compile CAPL
function! CaplCompile()
  if expand('%:e') == 'can' || expand('%:e') == 'cin'
    echo "Compiling CAPL file..."
    " Add your CAPL compiler command here
    " Example: !caplc %
  else
    echo "Not a CAPL file"
  endif
endfunction

" Create commands
command! CaplCompile call CaplCompile()

" Add menu items
if has("gui_running")
  anoremenu &Tools.&CAPL.&Compile :CaplCompile<CR>
endif

" 自动加载CAPL颜色主题
autocmd FileType capl source <sfile>:h/../colors/capl_colors.vim
