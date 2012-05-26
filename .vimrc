set nu
"auto indent
set ai
set ts=8

set ignorecase

"incremental searching
set incsearch

"not compatibal with vi
set nocp

set tags+=tags;

"Taglist auto open
let Tlist_Auto_Open=1

"Taglist auto close
let Tlist_Exit_OnlyWindow=1

"colorscheme
colorscheme my_darkblue

"set mouse=a

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"remember cursor position
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
