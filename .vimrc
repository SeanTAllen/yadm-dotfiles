" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" switch leader
let mapleader=','

" set tab handling and indentation.
set ts=2
set sw=2
set expandtab
set autoindent

" search
set incsearch
set hlsearch
set ignorecase
set smartcase
" use perl/python style regexes for search
nnoremap / /\v
vnoremap / /\v
" pressing <leader><space> clears the search highlights
nmap <silent> <leader><space> :nohlsearch<CR>
" Center the display line after searches.
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#zz

" highlight current line
set cursorline
" keep current line vertically centered
set scrolloff=999

" numbers setup
set numberwidth=3
nn <silent> <leader>vn :NumbersToggle<CR>
nn <silent> <leader>vo :NumbersOnOff<CR>

" disable backup files i don't use
set nobackup
set noswapfile
