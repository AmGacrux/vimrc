"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/rc/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/rc/dein/')
  call dein#begin('~/.vim/rc/dein/')

  let g:rc_dir    = expand('~/.vim/rc/dein')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/rc/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('justmao945/vim-clang')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

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
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

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

" Using clipboard
set clipboard=unnamedplus
