" Disallow detection of filetypes
set nocompatible              " be iMproved, required
filetype off

runtime macros/matchit.vim

set autoread
set encoding=utf-8

set noswapfile " No swap file
set nobackup
set nowritebackup"
set backspace=indent,eol,start

set relativenumber

filetype plugin indent on    " required
set autoindent

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

set incsearch
" Highlight matches when using :substitute
set hlsearch

" Predicts case sensitivity intentions
set smartcase

" Theme
syntax enable

" Use the system register for all cut yank and paste operations
set clipboard=unnamed

" Show Invisibles
" set list
" set listchars=tab:→→


autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype terraform setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype json setlocal ts=4 sw=4 sts=0 expandtab
" autocmd FileType javascript set formatprg=prettier\ --stdin

autocmd Filetype sh setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby compiler ruby
autocmd FileType nerdtree setlocal nolist

" Show trailing whitespace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Tab completion
set wildmode=list:longest,list:full
