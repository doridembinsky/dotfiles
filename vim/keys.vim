
let mapleader = " "

nnoremap <leader>b :ls<CR>:b<Space>
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
set re=1

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
