" CAPL filetype detection for Vim

augroup filetypedetect
  au! BufRead,BufNewFile *.can setfiletype capl
  au! BufRead,BufNewFile *.cin setfiletype capl
augroup END