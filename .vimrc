
source ~/Development/dotfiles/vim/keys.vim

set nocompatible " be iMproved, required
filetype off     " required

" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'thoughtbot/vim-rspec'
Plug 'BlakeWilliams/vim-pry'

Plug 'airblade/vim-gitgutter'     " Show git diff of lines edited
Plug 'tpope/vim-fugitive'         " :Gblame

Plug 'tpope/vim-endwise'          " Autocomplete end after a do
Plug 'mileszs/ack.vim'            " Use ack in Vim

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'

" Appearance and Themes
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ryanoasis/vim-devicons'

Plug 'w0rp/ale'

" Utilities
Plug 'tpope/vim-dispatch'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-endwise'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin indent on    " required

" Leader key is SPACE, I find it the best
let mapleader = " "

" Look and Feel settings
" syntax enable
" set background=dark
" set wildmenu " when opening a file with e.g. :e ~/.vim<TAB> there is a graphical menu of all the matches

" set ttyfast
" set lazyredraw
" set updatetime=300

" Numbers
" set number
" set numberwidth=4
" set ruler

" paste mode
" nnoremap <F5> :set invpaste paste?<CR>
" set pastetoggle=<F5>
" set showmode

" Treat long lines as break lines
" map j gj
" map k gk

" Indentation
" set autoindent
" set cindent
" set smartindent

" Folding
" Enable folding
" set foldmethod=syntax
" set foldlevel=99

" Enable folding with the z key
" nmap z za

" Disable all bells and whistles
" set noerrorbells visualbell t_vb=

" Ack tricks
" let g:ackprg = 'ag --vimgrep'
" nmap <leader>a :Ack! ""<Left>
" nmap <leader>A :Ack! "\b<cword>\b"<CR>

" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" " Add CoC ESLint if ESLint is installed
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif

let g:coc_disable_transparent_cursor = 1

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Show autocomplete when Tab is pressed
inoremap <silent><expr> <Tab> coc#refresh()

source ~/Development/dotfiles/vim/general.vim
" source ~/Development/dotfiles/vim/plugin_list.vim
source ~/Development/dotfiles/vim/plugin_config.vim
