call plug#begin('~/.vim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/gv.vim'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'thoughtbot/vim-rspec'
Plug 'BlakeWilliams/vim-pry'
" Fuzzy Search
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Syntax Highlighting And Indentation For 100+ Languages
Plug 'sheerun/vim-polyglot'

" Appearance and Themes
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
" Plug 'miyakogi/conoline.vim'

" Plug 'dense-analysis/ale'
Plug 'w0rp/ale'
" Autocompletion & Intellisense
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

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

call plug#end()
