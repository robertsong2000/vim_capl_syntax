" CAPL Syntax file for Vim
" Language: CAPL (Communication Access Programming Language)
" Maintainer: Your Name
" Last Change: 2024

if exists("b:current_syntax")
  finish
endif

" Case sensitivity
syn case match

" Comments
syn keyword caplTodo contained TODO FIXME XXX NOTE
syn match caplComment "//.*" contains=caplTodo
syn region caplComment start="/\*" end="\*/" contains=caplTodo

" Preprocessor directives
syn match caplPreProc "^\s*#\s*\(include\|define\|ifdef\|ifndef\|endif\|undef\|pragma\|line\|error\|warning\)"

" Strings and characters
syn region caplString start='"' skip='\\"' end='"' contains=caplSpecialChar
syn region caplString start="'" skip="\\'" end="'" contains=caplSpecialChar
syn match caplSpecialChar "\\." contained

" Numbers
syn match caplNumber "\<\d\+\>"
syn match caplNumber "\<0[xX][0-9a-fA-F]\+\>"
syn match caplNumber "\<0[bB][01]\+\>"
syn match caplFloat "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\>"

" Data types with different colors
syn keyword caplType int float double char byte word dword qword void
syn keyword caplType long short signed unsigned struct enum union
syn keyword caplType const static volatile extern auto register

" CAPL specific types
syn keyword caplType CAN FD LIN MOST FlexRay Ethernet
syn keyword caplType MSRTIMER MSTIMER SEC TIMER
syn keyword caplType message timer dbNode dbFile dbSignal dbMsg

" Control structures
syn keyword caplConditional if else switch case default
syn keyword caplRepeat for while do break continue
syn keyword caplLabel goto
syn keyword caplOperator return sizeof typeof

" CAPL event handlers
syn keyword caplEvent on start preStop stopMeasurement key
syn keyword caplEvent on timer on signal on message on preStart on preStop
syn keyword caplEvent on errorFrame on envVar on sysVar on start on stopMeasurement

" CAPL built-in variables
syn keyword caplConstant this thisNode thisEnvvar thisCAN

" CAPL built-in functions
syn keyword caplFunction setTimer cancelTimer output write setFileName getValue putValue
syn keyword caplFunction getSignal getEnvVarValue setSignal setEnvVarValue
syn keyword caplFunction getLocalTime getSystemTime getTimeString getDateString
syn keyword caplFunction setTimerCyclic setTimerRelative setTimerAbs

" CAPL constants
syn keyword caplConstant OK ERROR ERR_OK ERR_PARAM ERR_TIMEOUT ERR_QUEUE
syn keyword caplConstant ERR_NOMSG ERR_NOANSWER ERR_NETINUSE ERR_NETREADY ERR_NOTINUSE

" Identifiers
syn match caplIdentifier "\<[a-zA-Z_][a-zA-Z0-9_]*\>"

" Operators
syn match caplOperator "[+\-*/%=<>!&|^~?:]"
syn match caplOperator "&&\|||\|<<\|>>\|<=\|>=\|==\|!="

" Delimiters
syn match caplDelimiter "[(){}\[\];,.]"

" Define the highlighting groups with more colors
hi def link caplComment Comment
hi def link caplTodo Todo
hi def link caplPreProc PreProc
hi def link caplString String
hi def link caplSpecialChar SpecialChar
hi def link caplNumber Number
hi def link caplFloat Float

" Custom color groups for better highlighting
hi def link caplType Type
hi def link caplConditional Conditional
hi def link caplRepeat Repeat
hi def link caplLabel Label
hi def link caplOperator Operator
hi def link caplIdentifier Identifier
hi def link caplFunction Function
hi def link caplConstant Constant
hi def link caplDelimiter Delimiter

" Additional highlighting for CAPL-specific elements
hi def link caplEvent Keyword

" Optional: Override default colors for better visibility
" Uncomment these lines to customize colors
" hi caplType ctermfg=Blue guifg=Blue
" hi caplEvent ctermfg=DarkMagenta guifg=DarkMagenta
" hi caplFunction ctermfg=DarkGreen guifg=DarkGreen
" hi caplConstant ctermfg=DarkRed guifg=DarkRed

let b:current_syntax = "capl"