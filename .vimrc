" general settings
set nocompatible
syntax on
colorscheme jellybeans
""set background=dark
""let g:solarized_termcolors=256
""colorscheme solarized
" mkdir -p ~/.vim/colors
" cd ~/.vim/colors
" curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
set encoding=utf8
set laststatus=2
set number
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set background=dark
set ruler
set cursorline
let python_highlight_all = 1
filetype plugin on
set timeout timeoutlen=5000 ttimeoutlen=100

"personal kep map
" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>
" F2 toggle paste
nnoremap <F2> :set paste!<CR>
" F5 delete all trailing whitespaces
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" F6 toggle line numbers
nnoremap <F6> :set number!<CR>

" buffer navigation
nnoremap <tab> :bnext<CR>
nnoremap <S-tab> :bprevious<CR>

" Tab Setting Reference for Python and Vim
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType htmldjango set sw=2
autocmd FileType htmldjango set ts=2
autocmd FileType htmldjango set sts=2
set expandtab
set autoindent


" plugin folder to create
" ~/.vim/pack/foo/start
"
" plugin to install (git clone)
" https://github.com/tpope/vim-fugitive.git


" skip over closing symbols
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap <expr> ] getline('.')[getpos('.')[2] - 1] == ']' ? '<Right>' : ']'
inoremap <expr> ) getline('.')[getpos('.')[2] - 1] == ')' ? '<Right>' : ')'
inoremap <expr> } getline('.')[getpos('.')[2] - 1] == '}' ? '<Right>' : '}'
inoremap <expr> > getline('.')[getpos('.')[2] - 1] == '>' ? '<Right>' : '>'

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
