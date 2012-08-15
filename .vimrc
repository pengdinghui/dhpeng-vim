set nu
"auto indent
set ai
set ts=8

set ignorecase


"""""""""""""""""""""""""""""""""""""""""""
"	search setting
"""""""""""""""""""""""""""""""""""""""""""
"highlight searching
set hlsearch
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

set mouse=a

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"remember last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


"""""""""""""""""""""""""""""""""""""""""""
"	cscope setting
"""""""""""""""""""""""""""""""""""""""""""
if filereadable("cscope.out")
	cs add cscope.out
endif

nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
