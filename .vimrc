
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


source ~/Development/dotfiles/vim/keys.vim

" ----------------------------------- keys ---------------------------------

let mapleader = " "

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Rga<CR>
nnoremap <leader>z :Rg<Space>-g '*.

nnoremap <c-t> :FZF<CR>

nnoremap <ESC> :noh<return><esc>
nnoremap <leader>d obyebug<CR><ESC>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

nnoremap mm /def

map <leader>q :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
" set re=1

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

nnoremap <Leader>r :%s/

" noremap <silent> <C-S>          :update<CR>
" vnoremap <silent> <C-S>         <C-C>:update<CR>
" inoremap <silent> <C-S>         <C-O>:update<CR>

nnoremap ,d j0dwi<BS><ESC>
nnoremap <C-h> 0w
nnoremap <C-l> $


" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json']

" Add CoC Prettier if prettier is installed
" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif

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

" ---------------------------- General -----------------------------

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

set cindent
set smartindent

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
autocmd Filetype typescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype typescriptreact setlocal ts=4 sw=4 sts=0 expandtab
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

" New stuff
set ttyfast
set lazyredraw
set updatetime=300


" =========================== Plugin Config ================================
"set termguicolors
colorscheme OceanicNext

let g:oceanic_next_terminal_bold = 1
let g:airline_theme='oceanicnext'

" #Lightline {{{
" function! CocCurrentFunction()
"     return get(b:, 'coc_current_function', '')
" endfunction
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'gitbranch', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'gitbranch' ],
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename',
      \   'cocstatus': 'coc#status'
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

set laststatus=2

let g:ale_fixers = { 'javascript': ['prettier'], 'ruby': ['rubocop'], 'typescript': ['prettier'], 'typescriptreact': ['prettier']  }
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_linters.typescript = ['eslint']

let g:rspec_command = "Dispatch bin/spring rspec {spec}"

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" Ale Customization
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline   

command! -bang -nargs=* Rga call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

let g:fzf_buffers_jump = 1
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '
  \ . <q-args>, 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always ' 
"   \  . (len(<q-args>) > 0 ? <q-args> : '""'), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
