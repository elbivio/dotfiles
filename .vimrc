" Turn on the Wild menu
set wildmenu
set wildmode=longest:list,full

" Ignore case when searching
set ignorecase

" Makes search act like search in modern browsers
" set incsearch 

" Enable syntax highlighting
syntax enable 

" show line numbers
set number

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Colorscheme
colorscheme industry

" Statusline
set laststatus=2

" tab for buffers
map <tab> :bnext<cr>

" Airline settings
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
