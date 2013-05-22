set mouse=a

" Jump to files directory
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

set nocompatible

set showcmd

set foldmethod=marker

filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

set autoindent

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

set wildmenu
set wildmode=list:longest,full

set backspace=2

set number

set ignorecase
set smartcase

inoremap jj <Esc>
nnoremap JJJJ <Nop>

set incsearch
set hlsearch

hi LineNr ctermfg=darkgrey ctermbg=black

highlight MatchParen ctermbg=yellow

" Next Tab
nnoremap <silent> <C-S-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-S-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <C-w> :tabclose<CR>

" Space will toggle folds!
nnoremap <space> za

set cul
hi CursorLine term=none cterm=none ctermbg=none  

filetype plugin indent on
syntax on
