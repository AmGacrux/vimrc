"Basic Setting
set fenc=utf-8

set nobackup
set noswapfile

" If the file have been editing was modified then auto reload it.
set autoread
" Show the input command on status field.
set showcmd

" Looks
" Show the line number.
set number
" Show the current editing row consciously.
set cursorline
" Show the current editing column consciously.
" set cursorcolumn
" Show corresponding parentheses.
set showmatch
" Show the status field at all time.
set laststatus=2
" Command line complementation
set wildmode=list:longest

colorscheme jellybeans

nnoremap j gj
nnoremap k gk

" Tab
" Print tab-character
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" Expand tab-character to halfspace
set expandtab
set tabstop=4
set shiftwidth=2

" Searching
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

